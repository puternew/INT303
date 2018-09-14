<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:49:13 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        .submit{
            background-color: greenyellow;
            color: white;
            text-align : center;
            border-radius: 15px;
            box-shadow: 0 9px #999;
            border: none;
            padding: 15px 25px;
            font-size: 24px;
        }
        
        body{
            text-align: center;
            color: white;
            background-color: black;
        }
        </style>
    <body>
        <h1>Prime Number Application ${pn}</h1><hr>
        <form action="PrimeNumber" method="post">
            Please enter number:
            <input type="number" required min ="2" name="number"/><br>
            <input class="submit" type="submit" value ="OK" name="OK"/>
        </form>
        <hr>
        ${pn.primeNumber}<br>
        
        <h4>${pn.number} is ${pn.primeNumber ? "primenumber" : "not"}</h4>
        
    </body>
</html>
