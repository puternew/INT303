<%-- 
    Document   : index
    Created on : Aug 24, 2018, 11:34:57 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html><!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <style>
        body{
            text-align: center;
            background-color:${cookie.bgColor.value};
            height: 100vh
        }
        img{
            width: 200px;
        }
        .icon{
            display: inline-block;
            margin: 50px;
        }
    </style>
    <body>
        <div style="color: red">My name is Panupong, Hello world !!!</div>
        <hr>
        Menu :: <br>
        <div>
            <a href="CalculatorForm.html"><div class="icon"><img src="icon/calculator5.png"/><br>Simple Calculator</div></a>
        <a href="PrimeNumber"><div class="icon"><img src="icon/search.png"/><br>Prime Checker</div></a> <br>
        </div>
        <div>
        <a href="TestRequestParam"><div class="icon"><img src="icon/folder.png"/><br>Test Request Parameter</div></a>
        <a href="ProductList"><div class="icon"><img src="icon/goods.png"/><br>Our Product</div></a>
        </div>
        <a href="ChooseBackground">Choose Background Color</a>
        <p> ${cookie.bgColor.value}</p>
    </body>
</html>
