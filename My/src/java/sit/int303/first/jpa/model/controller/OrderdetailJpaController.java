/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sit.int303.first.jpa.model.controller;

import java.io.Serializable;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Query;
import javax.persistence.EntityNotFoundException;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;
import javax.transaction.UserTransaction;
import sit.int303.first.jpa.model.Orderdetail;
import sit.int303.first.jpa.model.OrderdetailPK;
import sit.int303.first.jpa.model.OrdersDetail;
import sit.int303.first.jpa.model.Product;
import sit.int303.first.jpa.model.controller.exceptions.NonexistentEntityException;
import sit.int303.first.jpa.model.controller.exceptions.PreexistingEntityException;
import sit.int303.first.jpa.model.controller.exceptions.RollbackFailureException;

/**
 *
 * @author INT303
 */
public class OrderdetailJpaController implements Serializable {

    public OrderdetailJpaController(UserTransaction utx, EntityManagerFactory emf) {
        this.utx = utx;
        this.emf = emf;
    }
    private UserTransaction utx = null;
    private EntityManagerFactory emf = null;

    public EntityManager getEntityManager() {
        return emf.createEntityManager();
    }

    public void create(Orderdetail orderdetail) throws PreexistingEntityException, RollbackFailureException, Exception {
        if (orderdetail.getOrderdetailPK() == null) {
            orderdetail.setOrderdetailPK(new OrderdetailPK());
        }
        orderdetail.getOrderdetailPK().setOrdernumber(orderdetail.getOrdersDetail().getOrdernumber());
        orderdetail.getOrderdetailPK().setProductcode(orderdetail.getProduct().getProductcode());
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            OrdersDetail ordersDetail = orderdetail.getOrdersDetail();
            if (ordersDetail != null) {
                ordersDetail = em.getReference(ordersDetail.getClass(), ordersDetail.getOrdernumber());
                orderdetail.setOrdersDetail(ordersDetail);
            }
            Product product = orderdetail.getProduct();
            if (product != null) {
                product = em.getReference(product.getClass(), product.getProductcode());
                orderdetail.setProduct(product);
            }
            em.persist(orderdetail);
            if (ordersDetail != null) {
                ordersDetail.getOrderdetailList().add(orderdetail);
                ordersDetail = em.merge(ordersDetail);
            }
            if (product != null) {
                product.getOrderdetailList().add(orderdetail);
                product = em.merge(product);
            }
            utx.commit();
        } catch (Exception ex) {
            try {
                utx.rollback();
            } catch (Exception re) {
                throw new RollbackFailureException("An error occurred attempting to roll back the transaction.", re);
            }
            if (findOrderdetail(orderdetail.getOrderdetailPK()) != null) {
                throw new PreexistingEntityException("Orderdetail " + orderdetail + " already exists.", ex);
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void edit(Orderdetail orderdetail) throws NonexistentEntityException, RollbackFailureException, Exception {
        orderdetail.getOrderdetailPK().setOrdernumber(orderdetail.getOrdersDetail().getOrdernumber());
        orderdetail.getOrderdetailPK().setProductcode(orderdetail.getProduct().getProductcode());
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            Orderdetail persistentOrderdetail = em.find(Orderdetail.class, orderdetail.getOrderdetailPK());
            OrdersDetail ordersDetailOld = persistentOrderdetail.getOrdersDetail();
            OrdersDetail ordersDetailNew = orderdetail.getOrdersDetail();
            Product productOld = persistentOrderdetail.getProduct();
            Product productNew = orderdetail.getProduct();
            if (ordersDetailNew != null) {
                ordersDetailNew = em.getReference(ordersDetailNew.getClass(), ordersDetailNew.getOrdernumber());
                orderdetail.setOrdersDetail(ordersDetailNew);
            }
            if (productNew != null) {
                productNew = em.getReference(productNew.getClass(), productNew.getProductcode());
                orderdetail.setProduct(productNew);
            }
            orderdetail = em.merge(orderdetail);
            if (ordersDetailOld != null && !ordersDetailOld.equals(ordersDetailNew)) {
                ordersDetailOld.getOrderdetailList().remove(orderdetail);
                ordersDetailOld = em.merge(ordersDetailOld);
            }
            if (ordersDetailNew != null && !ordersDetailNew.equals(ordersDetailOld)) {
                ordersDetailNew.getOrderdetailList().add(orderdetail);
                ordersDetailNew = em.merge(ordersDetailNew);
            }
            if (productOld != null && !productOld.equals(productNew)) {
                productOld.getOrderdetailList().remove(orderdetail);
                productOld = em.merge(productOld);
            }
            if (productNew != null && !productNew.equals(productOld)) {
                productNew.getOrderdetailList().add(orderdetail);
                productNew = em.merge(productNew);
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
                OrderdetailPK id = orderdetail.getOrderdetailPK();
                if (findOrderdetail(id) == null) {
                    throw new NonexistentEntityException("The orderdetail with id " + id + " no longer exists.");
                }
            }
            throw ex;
        } finally {
            if (em != null) {
                em.close();
            }
        }
    }

    public void destroy(OrderdetailPK id) throws NonexistentEntityException, RollbackFailureException, Exception {
        EntityManager em = null;
        try {
            utx.begin();
            em = getEntityManager();
            Orderdetail orderdetail;
            try {
                orderdetail = em.getReference(Orderdetail.class, id);
                orderdetail.getOrderdetailPK();
            } catch (EntityNotFoundException enfe) {
                throw new NonexistentEntityException("The orderdetail with id " + id + " no longer exists.", enfe);
            }
            OrdersDetail ordersDetail = orderdetail.getOrdersDetail();
            if (ordersDetail != null) {
                ordersDetail.getOrderdetailList().remove(orderdetail);
                ordersDetail = em.merge(ordersDetail);
            }
            Product product = orderdetail.getProduct();
            if (product != null) {
                product.getOrderdetailList().remove(orderdetail);
                product = em.merge(product);
            }
            em.remove(orderdetail);
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

    public List<Orderdetail> findOrderdetailEntities() {
        return findOrderdetailEntities(true, -1, -1);
    }

    public List<Orderdetail> findOrderdetailEntities(int maxResults, int firstResult) {
        return findOrderdetailEntities(false, maxResults, firstResult);
    }

    private List<Orderdetail> findOrderdetailEntities(boolean all, int maxResults, int firstResult) {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            cq.select(cq.from(Orderdetail.class));
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

    public Orderdetail findOrderdetail(OrderdetailPK id) {
        EntityManager em = getEntityManager();
        try {
            return em.find(Orderdetail.class, id);
        } finally {
            em.close();
        }
    }

    public int getOrderdetailCount() {
        EntityManager em = getEntityManager();
        try {
            CriteriaQuery cq = em.getCriteriaBuilder().createQuery();
            Root<Orderdetail> rt = cq.from(Orderdetail.class);
            cq.select(em.getCriteriaBuilder().count(rt));
            Query q = em.createQuery(cq);
            return ((Long) q.getSingleResult()).intValue();
        } finally {
            em.close();
        }
    }
    
}
