<%-- 
    Document   : MultiplicationTable
    Created on : Aug 10, 2018, 2:09:47 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Prompt" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        table{
            margin-top: 130px;
            font-size: 24px;
        }tr{
            padding: 20px;
        }table,tr,td{
            font-family: 'Prompt', sans-serif;
            background-color: olive;
            border: solid 2px black;
            color:white;
            padding: 2px;
        }
    </style>
    <body>
        <center><table>
            <tr><td colspan = "5">Table of Number ${param.n}</td></tr>
            <c:forEach begin="2" end="12" var="x">
                <tr>
                    <td style="text-align:center;">${param.n}</td>
                    <td style="text-align:center;">x</td>
                    <td style="text-align:center;">${x}</td>
                    <td style="text-align:center;">=</td>
                    <td style="text-align:center">${param.n*x}</td>
                </tr>
            </c:forEach>
        </table></center>
    </body>
</html>
