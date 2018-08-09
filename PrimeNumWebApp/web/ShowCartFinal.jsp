<%-- 
    Document   : ShowCartFinal
    Created on : Aug 9, 2018, 4:29:12 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    
    <body>
        <h1>Cart Total to PAY</h1>
        <table class="table table-hover " id="example" style="width: 70vw ; text-align: center"  >
                <thead>
                <th>Image</th>
                <th>Number</th>
                <th>Product Code</th>
                <th>Product Name</th>
                <th>Product Line</th>
                <th>Scale</th>
                <th>Price</th>
                <th>Add to Cart</th>
                </thead>
                <c:forEach items="${cart.lineItems}" var="p" varStatus="vs">
                    
                    <tr>
                        <td><img src="model-images/${p.product.productCode}.jpg" width="120"></td>
                        <td>${vs.count}</td>
                        <td>${p.product.productCode}</td>
                        <td>${p.product.productName}</td>
                        <td>${p.product.productLine}</td>
                        <td>${p.product.productScale}</td>
                        <td>${p.product.msrp}</td>
                        <td>
                            <form action="AddItemToCart" method="post">
                                <input type="hidden" value="${p.product.productCode}" name="productCode"/>
                                <input type="submit" value="Cancel">
                                </form>
                        </td>
                        
                    </tr>
                </c:forEach>
            </table>
        
    </body>
</html>
