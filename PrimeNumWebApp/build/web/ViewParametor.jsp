<%-- 
    Document   : ViewParametor
    Created on : Aug 8, 2018, 1:59:27 PM
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
    <body>
        <h1>Favorite Subject ::</h1>
        <form action="TestRequestParanServlet" method="post">
            You Student Id : <Input type="text" name="id"/><br>
            You Name : <Input type="text" name="name"/><br>
            Favorite Subject : <br>
            <input name="subject" type="checkbox" value="Web Programming">Web Programming<br>
            <input name="subject" type="checkbox" value="Computer Network">Computer Network<br>
            <input name="subject" type="checkbox" value="NetWork Programming">NetWork Programming<br>
            <input name="subject" type="checkbox" value="Database Administrator">Database Administrator<br>
            <input name="subject" type="checkbox" value="Computer Security">Computer Security<br>
            <input name="subject" type="checkbox" value="Software Process">Software Process<br>
            <input type="submit"/>
        </form>
        <hr>
        <table>
            <tr>
                <td>Student ID : </td>
                <td>${param.id}</td>
            </tr>
            <tr>
                <td>Student Name : </td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <td>Your Favorite Subject : </td>
                <td> 
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>
                    </c:forEach>
                
                
                </td>
            </tr>
        </table>
    </body>
</html>
