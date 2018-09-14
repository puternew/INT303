<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:23:58 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
         <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
         <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
         <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
         
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css">
        
    </head>
    <style>
        
        body{
            /*background: linear-gradient(to bottom right, #f1bfc2, #ffd992);*/
        }
    </style>
    <body>
        <center><h1>Product List</h1><hr></center>
        
        <div class="container" >
            <table class="table-hover">
            <tr>
                <td><a href="ShowCartServlet">your CART : (${cart.totalQuantity})</a></td>
            </tr>
            </table>
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
                <c:forEach items="${products}" var="p" varStatus="vs">
                    
                    <tr>
                        <td><img src="model-images/${p.productCode}.jpg" width="120"></td>
                        <td>${vs.count}</td>
                        <td>${p.productCode}</td>
                        <td>${p.productName}</td>
                        <td>${p.productLine}</td>
                        <td>${p.productScale}</td>
                        <td>${p.msrp}</td>
                        <!--<td><a href="AddItemToCart?productCode=${p.productCode}"><input type="button" value="ADD"></a></td>-->
                        <td>
                            <form action="AddItemToCart" method="post">
                                <input type="hidden" value="${p.productCode}" name="productCode"/>
                                <input type="submit" value="Add To Cart">
                                </form>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <script>
            $(document).ready(function () {
                $('#example').DataTable();
            });
        </script>
    </body>
    
</html>
