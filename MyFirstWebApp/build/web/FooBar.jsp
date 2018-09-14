<%-- 
    Document   : FooBar
    Created on : Aug 10, 2018, 11:26:34 AM
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
        <table>
        <%
            int x = Integer.valueOf(request.getParameter("n"));
            for (int i = 2; i <= 12; i++) {
        %>
        <tr>
            <td><%=x%></td>
            <td> x </td>
            <td> <%=i%> </td>
            <td> = </td>
            <td> <%=i*x%> </td>
        </tr>
       <% } %>
        </table>
    </body>
</html>
