<%-- 
    Document   : ShowCart
    Created on : Aug 9, 2018, 3:53:35 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="icon" href="dog.png">
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>
        <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css"/>
        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    </head>
    <style>
        body{
            background-color: snow;
            font-family: 'Kanit', sans-serif;
        }
        td,th,table{
            border: solid 2px seashell;
            color:#ffffff;
            background-color: chocolate;
        }
        table{
            width: 70%;
        }
        .ontop{
            background-color: coral;
        }
        h1,h2{
            color: white;
            font-size: 28px;
            background-color: chocolate;
           
        }h1 a{
            color: white;
        }
        h1 a:hover{
            color: white;
            text-decoration: none;
        }
        h2 a{
            color: white;
        }
        h2 a:hover{
            color: white;
            text-decoration: none;
        }
        h3{
            color: yellow;
            text-align: left;
            display:inline-block;
            font-size: 42px;
        }h4{
            color: yellow;
            text-align: right;
            display:inline-block;
            font-size: 42px;
        }
        .ontop img{
            display:inline-block;

        }
        .AddBox{
            color: black;
        }.addSub:hover{
            color: white;
        }
        .addSub input:hover{
            background-color: crimson;
        }
    </style>
    <body>
    <center><div class="ontop">
            <h3>YOUR&nbsp;&nbsp;</h3>
            <img src="dog.png" height="250px" width="310px">
            <h4>CART</h4>
        </div></center>
    <hr>
     <jsp:include page="include/Header.jsp?title=Your ShoppingCart"/>
    <div class="container">
        <table class="table">
            <tr>
                <td><h1><a href="ProductList"> Product List</a></h1></td>
                <td><h2><a href="ShowCart.jsp">Your Cart: (${cart.totalQuantity})</a></h2></td>
        </tr>
        </table>
        <table id="example" class="table">
            <thead>
            <th>Image</th>
            <th>Quantity</th>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Line</th>
            <th>Scale</th>
            <th>Price</th>
            <th>TotalPrice</th>
            <th>Remove</th>
            
            </thead>
         
            <c:forEach items="${cart.lineItem}" var="lineitem" varStatus="vs">
                <tr>
                    <td><img src="model-images/${lineitem.product.productCode}.jpg" width="120"></td>
                    <td>${lineitem.quantity}</td>
                    <td>${lineitem.product.productCode}</td>
                    <td>${lineitem.product.productName}</td>
                    <td>${lineitem.product.productLine}</td>
                    <td>${lineitem.product.productScale}</td>
                    <td>${lineitem.product.msrp}</td>
                    <td>${lineitem.totalPrice}</td>
                    <td><center class="AddBox">
                        <img src="cart.png" width="50"><br>
                        <form action="RemoveItem" method="post">
                            <input type="hidden" value="${lineitem.product.productCode}" name="productCode"/>
                            <div class="addSub"><input type="submit" onclick="myFunction()" value="ReMove"/></div>
                        </form>
                    
                       <!-- <a href="AddItemToCart?productCode=${p.productCode}">
                            <input type="button" value="Add To Cart"/>
                        </a>-->
                </center></td>
                </tr>
            </c:forEach>
                <tr>
                    <td colspan="2" style="text-align: center">TotalQuantity</td>
                    <td style="text-align: center">${cart.totalQuantity}</td>
                    <td colspan="3"></td>
                    <td colspan="2" style="text-align: center">TotalCart</td>
                    <td colspan="3" style="text-align: center">${cart.totalPrice}</td>
                </tr>
        </table>
    </div>
    <script>
        function myFunction() {
    alert("Really??");
}
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
</body>
</html>