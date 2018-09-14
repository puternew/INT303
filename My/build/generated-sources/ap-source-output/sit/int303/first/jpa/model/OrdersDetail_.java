package sit.int303.first.jpa.model;

import java.util.Date;
import javax.annotation.Generated;
import javax.persistence.metamodel.ListAttribute;
import javax.persistence.metamodel.SingularAttribute;
import javax.persistence.metamodel.StaticMetamodel;
import sit.int303.first.jpa.model.Customer;
import sit.int303.first.jpa.model.Orderdetail;

@Generated(value="EclipseLink-2.5.2.v20140319-rNA", date="2018-09-07T12:18:35")
@StaticMetamodel(OrdersDetail.class)
public class OrdersDetail_ { 

    public static volatile SingularAttribute<OrdersDetail, Customer> customernumber;
    public static volatile SingularAttribute<OrdersDetail, String> comments;
    public static volatile ListAttribute<OrdersDetail, Orderdetail> orderdetailList;
    public static volatile SingularAttribute<OrdersDetail, Integer> ordernumber;
    public static volatile SingularAttribute<OrdersDetail, Date> shippeddate;
    public static volatile SingularAttribute<OrdersDetail, Date> orderdate;
    public static volatile SingularAttribute<OrdersDetail, Date> requireddate;
    public static volatile SingularAttribute<OrdersDetail, String> status;

}