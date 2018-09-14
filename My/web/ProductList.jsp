<%-- 
    Document   : ProductList
    Created on : Aug 8, 2018, 3:22:23 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://fonts.googleapis.com/css?family=Fugaz+One" rel="stylesheet">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.datatables.net/1.10.19/css/dataTables.bootstrap.min.css"  rel="stylesheet">
        <script src ="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap.min.js"></script>
    </head>
    <table class="table">
        <tr>
            <td>
                <a href="index.html" title="Back to Home"><img src="simple_wolf.png" width="120"/></a>
            </td>
        </tr>
    </table>
    
    <style>
        
        .head{
            
            
            background-repeat: no-repeat;
            background-size: 100%;
            text-height: 200px;
            padding-top: 150px;
            padding-bottom: 150px;
            font-size: 50px;
        }
        
        h1{
            margin-left: -1px;
            margin-right: -1px;
            padding-top: 50px;
            text-align: center;
            font-family: Fugaz One;
            color: white;
           
        }
        body{
            background-color: white ;
            font-family: sans-serif;
            margin-right: 10px;
            margin-left: 10px;
            margin-top: 10px;
            margin-bottom: 10px;
        }
        table {
            
            border-color: black;
            border-collapse: collapse;
            heigth: 50%;
            
        }
        th, td {
            margin: -1px;
            text-align: left;
            padding: 8px;
            
        }
        tr:nth-child(even){
            background-color: #f2f2f2
        }
        th {
            background-color: black ;
            color: white;
        }
        
        td.cart{
            font-size: 25px;
        }
    </style>

    <body>
        <div class="container">
            <table class="table">
                <tr>
                    
        </div>
        <div class="head">
            <h1>SHOP ZING</h1>
            <td>
                <a href="ShowCart">Your Cart: ${cart.totalQuantity}</a>
            </td>
        </tr>
        </div>
        
        <br>
        <table id ="example" class="table">
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
                <td><img src="model-images/${p.productcode}.jpg" width ="120" ></td>
                <td>${vs.count}</td>
                <td><a href="GetProduct?ProductCode=${p.productcode}">${p.productcode}</a></td>
                <td>${p.productname}</td>
                <td>${p.productline}</td>
                <td>${p.productscale}</td>
                <td>${p.msrp}</td>
                <td>
            <form action="AddItemToCart" method="post">
                <input type="submit" value="add" >
                <input type="hidden" name="productCode" value="${p.productcode}">
            </form>
            <a href="AddItemToCart?ProductCode=${p.productcode}">
                <input type="button" value="Add To Cart" >
            </a>
            
                   </td>   
/
             
            </tr>
        </c:forEach>  

    </table>
        <div>
    <script>
        $(document).ready(function () {
            $('#example').DataTable();
        });
    </script>
        </div>
</body>
</html>
