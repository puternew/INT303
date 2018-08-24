<%-- 
    Document   : SimpleCalculatorview
    Created on : Aug 6, 2018, 4:10:22 PM
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
        <h1>Result ::</h1>
        <table>
            <tr>
                <td> X </td>
                <td> = </td>
                <td> ${calculator.x} </td>                          
            </tr>
            <tr>
                <td> Y </td>
                <td> = </td>
                <td> ${calculator.y} </td>                     
            </tr>
            <tr>
                <td> Operator </td>
                <td> = </td>
                <td> ${calculator.operator} </td>                   
            </tr>
            <tr>
                <td> Result </td>
                <td> = </td> 
                <td> ${calculator.result} </td>                     
            </tr>
        </table>
    </body>
</html>
