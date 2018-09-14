<%-- 
    Document   : ShopCart
    Created on : Aug 9, 2018, 4:23:40 PM
    Author     : INT303
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Fugaz+One" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SHOP CART</title>
    </head>
    <style>
        
       
        .footer{
            
            margin: 0px;
            background-color: orange;
            word-spacing:15px;
            padding-top: 50px;
            padding-bottom: 50px;
            text-align: center;
        }
        
        body{
            
            margin: 0px;
            font-family: Fugaz One;
        }
        h1{
            margin-top: -1px;
            margin-bottom: -1px;
            padding-left: 20px;
            padding-bottom: 50px;
            padding-top: 50px;
            font-size: 50px;
            background-color: gold;
            font-family: Fugaz One;
            width: 100%;
        }
        table {
            
            border-radius: 100px;
            border: 1px solid #73AD21;
            font-size: 20px;
            margin: 20px;
            border-color: black;
            border-collapse: collapse;
            heigth: 100%;

        }
        th, td {
            
            text-align: center;
            width: 50%;
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
    </style>
    <center><jsp:include page="include/Header.jsp?title="/></center>
    <body>
       
        
    <center><h1>YOUR CART <img src="shopping-cart.png" width="60"></h1><br></center>
    <center> <img src="tenor.gif" style="width:300px;"></center>
        
       <div class="content">
        <table id ="example" class="table">
            <thead>
            <th>Image</th>    
            <th>No</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Unit Price</th>
            <th>Total Price</th>

        </thead>
        <c:set var="items" value="${sessionScope.cart.lineItems}"/>
        <c:set var="bigColorX" value="lightgray"/>
        <c:set var="bigColorY" value="white"/>
        <c:forEach items="${cart.lineItems}" var="line" varStatus="vs">
            <tr style="background-color:${vs.count%2==1?bgColorX : bgColorY}">
                <td><img src="model-images/${line.product.productCode}.jpg" style="width:200px;" ></td>
                <td>
                    ${vs.count}</td>
                <td>${line.product.productName}</td>
                <td>${line.quantity}</td>
                <td>${line.salePrice}</td>
                <td style="text-align:right">
                    <fmt:formatNumber value ="${line.totalPrice}" pattern="#,###.00"/>
                </td> 
            </tr>
        </c:forEach>  
            <tr>
                <td colspan="2" ></td>
                <td>${cart.totalQuantity}</td>
                <td></td>
                <td>${cart.totalPrice}</td>
            </tr>
       </div>
            
    </table>
            <div class="footer">
                <a href="https://www.facebook.com/profile.php?id=100004801718064" name="facebook" ><img src="facebook-logo-button.png " style="width: 100px;"></a>&nbsp;&nbsp;&nbsp;
                 <a href="https://www.instagram.com/nwpkul/?hl=en" name="ig" ><img src="instagram-symbol.png "style="width: 100px;"></a>
            </div>
</body>
</html>
