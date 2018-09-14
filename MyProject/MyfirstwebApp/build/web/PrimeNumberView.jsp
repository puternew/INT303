<%-- 
    Document   : PrimeNumberView
    Created on : Aug 8, 2018, 9:49:31 AM
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
        h3{
            color:green;
        }
    </style>
    <body>
        <h1>Prime Number Application <br>${pn}</h1>
        <form action="PrimeNumber" method="post">
            Please enter number :
            <input name="number" type="number" required min="2"/>
            <input style=" color:rosybrown" type="submit" value="OK">
        </form>
        <hr>
        <h3>${pn.number} is ${pn.primeNumber ? "" : "not"} primenumber</h3>
         <a href="index.html">HOME</a><br>
    </body>
</html>
