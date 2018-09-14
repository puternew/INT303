<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:23:16 PM
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
            background-color: lightseagreen;
            
        }
        table{
            width: 70%;
        }
        .ontop{
            background-color: lightseagreen;
        }
        h1,h2{
            color: white;
            font-size: 28px;
            background-color: lightseagreen;
           
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
        }
        .addSub:hover{
            color: white;
        }
        .addSub input:hover{
            background-color: forestgreen;
        }
    </style>
    <body>
       
    <center><div class="ontop">
            <h3>UWEL&nbsp;</h3>
            <img src="sharktop.png" height="150px" width="160px">
            <h4>&nbsp;COME</h4>
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
            <th>No</th>
            <th>Product Code</th>
            <th>Product Name</th>
            <th>Product Line</th>
            <th>Scale</th>
            <th>Price</th>
            <th>Add To Cart</th>
            </thead>
            
            
            <c:forEach items="${products}" var="p" varStatus="vs">
                <tr>
                    <td><img src="model-images/${p.productcode}.jpg" width="120"></td>
                    <td>${vs.count}</td>
                    <td><a style="color:white" href="GetProduct?productCode=${p.productcode}">${p.productcode}</a></td>
                    <td>${p.productname}</td>
                    <td>${p.productline}</td>
                    <td>${p.productscale}</td>
                    <td>${p.msrp}</td>
                    <td><center class="AddBox">
                        <img src="cart.png" width="50"><br>
                        <form action="AddItemToCart" method="post">
                            <input type="hidden" value="${p.productcode}" name="productCode"/>
                            <div class="addSub"><input type="submit" onclick="myFunction()" value="Add To Cart"/></div>
                        </form>
                       <!-- <a href="AddItemToCart?productCode=${p.productcode}">
                            <input type="button" value="Add To Cart"/>
                        </a>-->
                </center></td>
                </tr>
            </c:forEach>
        </table>
    </div>
    <script>
        function myFunction() {
    alert("Thank for Shopping");
}
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
</body>
</html>
