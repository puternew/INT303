package sit.int303.first.jpa.model;

import java.math.BigDecimal;
import javax.annotation.Generated;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import sit.int303.first.jpa.model.OrderdetailPK;
import sit.int303.first.jpa.model.OrdersDetail;
import sit.int303.first.jpa.model.Product;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-09-07T12:18:35")
@StaticMetamodel(Orderdetail.class)
public class Orderdetail_ { 

    public static volatile SingularAttribute<Orderdetail, Product> product;
    public static volatile SingularAttribute<Orderdetail, OrderdetailPK> orderdetailPK;
    public static volatile SingularAttribute<Orderdetail, BigDecimal> priceeach;
    public static volatile SingularAttribute<Orderdetail, OrdersDetail> ordersDetail;
    public static volatile SingularAttribute<Orderdetail, Short> orderlinenumber;
    public static volatile SingularAttribute<Orderdetail, Integer> quantityordered;

}