/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.jpa.model.controller;

import java.io.Serializable;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import sit.int303.first.jpa.model.Customer;
import sit.int303.first.jpa.model.Orderdetail;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.transaction.UserTransaction;
import sit.int303.first.jpa.model.OrdersDetail;
import sit.int303.first.jpa.model.controller.exceptions.IllegalOrphanException;
import sit.int303.first.jpa.model.controller.exceptions.NonexistentEntityException;
import sit.int303.first.jpa.model.controller.exceptions.PreexistingEntityException;
import sit.int303.first.jpa.model.controller.exceptions.RollbackFailureException;

/**
 *
 * @author INT303
 */
public class OrdersDetailJpaController implements Serializable {

    public OrdersDetailJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(OrdersDetail ordersDetail) throws PreexistingEntityException, RollbackFailureException, Exception {
        if (ordersDetail.getOrderdetailList() == null) {
            ordersDetail.setOrderdetailList(new ArrayList<Orderdetail>());
        }
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            Customer customernumber = ordersDetail.getCustomernumber();
            if (customernumber != null) {
                customernumber = em.getReference(customernumber.getClass(), customernumber.getCustomernumber());
                ordersDetail.setCustomernumber(customernumber);
            }
            List<Orderdetail> attachedOrderdetailList = new ArrayList<Orderdetail>();
            for (Orderdetail orderdetailListOrderdetailToAttach : ordersDetail.getOrderdetailList()) {
                orderdetailListOrderdetailToAttach = em.getReference(orderdetailListOrderdetailToAttach.getClass(), orderdetailListOrderdetailToAttach.getOrderdetailPK());
                attachedOrderdetailList.add(orderdetailListOrderdetailToAttach);
            }
            ordersDetail.setOrderdetailList(attachedOrderdetailList);
            em.persist(ordersDetail);
            if (customernumber != null) {
                customernumber.getOrdersDetailList().add(ordersDetail);
                customernumber = em.merge(customernumber);
            }
            for (Orderdetail orderdetailListOrderdetail : ordersDetail.getOrderdetailList()) {
                OrdersDetail oldOrdersDetailOfOrderdetailListOrderdetail = orderdetailListOrderdetail.getOrdersDetail();
                orderdetailListOrderdetail.setOrdersDetail(ordersDetail);
                orderdetailListOrderdetail = em.merge(orderdetailListOrderdetail);
                if (oldOrdersDetailOfOrderdetailListOrderdetail != null) {
                    oldOrdersDetailOfOrderdetailListOrderdetail.getOrderdetailList().remove(orderdetailListOrderdetail);
                    oldOrdersDetailOfOrderdetailListOrderdetail = em.merge(oldOrdersDetailOfOrderdetailListOrderdetail);
                }
            }
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            if (findOrdersDetail(ordersDetail.getOrdernumber()) != null) {
                throw new PreexistingEntityException("OrdersDetail " + ordersDetail + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(OrdersDetail ordersDetail) throws IllegalOrphanException, NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            OrdersDetail persistentOrdersDetail = em.find(OrdersDetail.class, ordersDetail.getOrdernumber());
            Customer customernumberOld = persistentOrdersDetail.getCustomernumber();
            Customer customernumberNew = ordersDetail.getCustomernumber();
            List<Orderdetail> orderdetailListOld = persistentOrdersDetail.getOrderdetailList();
            List<Orderdetail> orderdetailListNew = ordersDetail.getOrderdetailList();
            List<String> illegalOrphanMessages = null;
            for (Orderdetail orderdetailListOldOrderdetail : orderdetailListOld) {
                if (!orderdetailListNew.contains(orderdetailListOldOrderdetail)) {
                    if (illegalOrphanMessages == null) {
                        illegalOrphanMessages = new ArrayList<String>();
                    }
                    illegalOrphanMessages.add("You must retain Orderdetail " + orderdetailListOldOrderdetail + " since its ordersDetail field is not nullable.");
                }
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            if (customernumberNew != null) {
                customernumberNew = em.getReference(customernumberNew.getClass(), customernumberNew.getCustomernumber());
                ordersDetail.setCustomernumber(customernumberNew);
            }
            List<Orderdetail> attachedOrderdetailListNew = new ArrayList<Orderdetail>();
            for (Orderdetail orderdetailListNewOrderdetailToAttach : orderdetailListNew) {
                orderdetailListNewOrderdetailToAttach = em.getReference(orderdetailListNewOrderdetailToAttach.getClass(), orderdetailListNewOrderdetailToAttach.getOrderdetailPK());
                attachedOrderdetailListNew.add(orderdetailListNewOrderdetailToAttach);
            }
            orderdetailListNew = attachedOrderdetailListNew;
            ordersDetail.setOrderdetailList(orderdetailListNew);
            ordersDetail = em.merge(ordersDetail);
            if (customernumberOld != null && !customernumberOld.equals(customernumberNew)) {
                customernumberOld.getOrdersDetailList().remove(ordersDetail);
                customernumberOld = em.merge(customernumberOld);
            }
            if (customernumberNew != null && !customernumberNew.equals(customernumberOld)) {
                customernumberNew.getOrdersDetailList().add(ordersDetail);
                customernumberNew = em.merge(customernumberNew);
            }
            for (Orderdetail orderdetailListNewOrderdetail : orderdetailListNew) {
                if (!orderdetailListOld.contains(orderdetailListNewOrderdetail)) {
                    OrdersDetail oldOrdersDetailOfOrderdetailListNewOrderdetail = orderdetailListNewOrderdetail.getOrdersDetail();
                    orderdetailListNewOrderdetail.setOrdersDetail(ordersDetail);
                    orderdetailListNewOrderdetail = em.merge(orderdetailListNewOrderdetail);
                    if (oldOrdersDetailOfOrderdetailListNewOrderdetail != null && !oldOrdersDetailOfOrderdetailListNewOrderdetail.equals(ordersDetail)) {
                        oldOrdersDetailOfOrderdetailListNewOrderdetail.getOrderdetailList().remove(orderdetailListNewOrderdetail);
                        oldOrdersDetailOfOrderdetailListNewOrderdetail = em.merge(oldOrdersDetailOfOrderdetailListNewOrderdetail);
                    }
                }
            }
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            String msg = ex.getLocalizedMessage();
            if (msg == null || msg.length() == 0) {
                Integer id = ordersDetail.getOrdernumber();
                if (findOrdersDetail(id) == null) {
                    throw new NonexistentEntityException("The ordersDetail with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(Integer id) throws IllegalOrphanException, NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            OrdersDetail ordersDetail;
            try {
                ordersDetail = em.getReference(OrdersDetail.class, id);
                ordersDetail.getOrdernumber();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The ordersDetail with id " + id + " no longer exists.", enfe);
            }
            List<String> illegalOrphanMessages = null;
            List<Orderdetail> orderdetailListOrphanCheck = ordersDetail.getOrderdetailList();
            for (Orderdetail orderdetailListOrphanCheckOrderdetail : orderdetailListOrphanCheck) {
                if (illegalOrphanMessages == null) {
                    illegalOrphanMessages = new ArrayList<String>();
                }
                illegalOrphanMessages.add("This OrdersDetail (" + ordersDetail + ") cannot be destroyed since the Orderdetail " + orderdetailListOrphanCheckOrderdetail + " in its orderdetailList field has a non-nullable ordersDetail field.");
            }
            if (illegalOrphanMessages != null) {
                throw new IllegalOrphanException(illegalOrphanMessages);
            }
            Customer customernumber = ordersDetail.getCustomernumber();
            if (customernumber != null) {
                customernumber.getOrdersDetailList().remove(ordersDetail);
                customernumber = em.merge(customernumber);
            }
            em.remove(ordersDetail);
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public List<OrdersDetail> findOrdersDetailEntities() {
        return findOrdersDetailEntities(true, -1, -1);
    }

    public List<OrdersDetail> findOrdersDetailEntities(int maxResults, int firstResult) {
        return findOrdersDetailEntities(false, maxResults, firstResult);
    }

    private List<OrdersDetail> findOrdersDetailEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(OrdersDetail.class));
            Query q = em.createQuery(cq);
            if (!all) {
                q.setMaxResults(maxResults);
                q.setFirstResult(firstResult);
            }
            return q.getResultList();
        } finally {
            em.close();
        }
    }

    public OrdersDetail findOrdersDetail(Integer id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(OrdersDetail.class, id);
        } finally {
            em.close();
        }
    }

    public int getOrdersDetailCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<OrdersDetail> rt = cq.from(OrdersDetail.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
