<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:42 PM
    Author     : INT303
--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link href="https://fonts.googleapis.com/css?family=Kanit" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body{
                background-color: whitesmoke;
                font-family: 'Kanit', sans-serif;
            }
        </style>
    </head>
    <body>
        <h1>Favorite Subject</h1>
        
        <form action="TestRequestParam" method="post">
            Your Student id: <input type="text" name="id"/><br><p></p>
            Your Name id: <input type="text" name="name"/><br>
            Favorite Subject: <br>
            <input name="subjects" type="checkbox" value="Web Programming"/>Web Programming<br>
            <input name="subjects" type="checkbox" value="Computer Network"/>Computer Network<br>
            <input name="subjects" type="checkbox" value="Network Programming"/>Network Programming<br>
            <input name="subjects" type="checkbox" value="Database Administrator"/>Database Administrator<br>
            <input name="subjects" type="checkbox" value="Computer Security"/>Computer Security<br>
            <input name="subjects" type="checkbox" value="Software Process"/>Software process<br>
            <input type="submit"/>
        </form>
        <hr>
        
        <table>
            <tr>
                <td>Student ID</td>
                <td>${param.id}</td>
            </tr>
            <tr>
                <td>Student Name</td>
                <td>${param.name}</td>
            </tr>
            <tr>
                <td>Your Favorite Subjects</td>
                <td>
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>
                    </c:forEach>
                </td>            
            </tr>
        </table>
    </body>
</html>
