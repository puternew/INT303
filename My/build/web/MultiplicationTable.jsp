<%-- 
    Document   : MultiplicationTable
    Created on : Aug 10, 2018, 2:08:32 PM
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
    <style>
        
        
        body{
            font-size: 20px;
        }
    </style>
    <body>
        <table>
            <tr>
               
                <td colspan="5" style="font-size:25px;"><b>Table of ${param.n}</b></td>
            </tr>
            <c:forEach begin="2" end="12" var="x">
            <tr>
                <td style="text-align: right">${param.n}</td>
                <td> x </td>
                <td style="text-align: right"> ${x}</td>
                <td> =</td>
                <td style="text-align: right">${param.n * x}</td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
