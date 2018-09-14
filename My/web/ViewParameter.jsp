<%-- 
    Document   : ViewParameter
    Created on : Aug 8, 2018, 1:57:29 PM
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
            font-family: sans-serif;
            background-color: DarkSlateGrey; 
            border: 10px;
        }

        input[name = id]{

            border-radius: 15px;
            background-color: balck;

        }
        input[name = name]{

            border-radius: 15px;
            background-color: balck;

        }

        .submit{
            background-color: DodgerBlue ;
            color:white;
            border-radius: 15px;
            padding: 15px 15px;
            text-align : center;
            border: none;
        }
        
        hr{
            
           
        }
    </style>
    <body>
        <h1>Favorite Subject</h1><hr>
        <form action = "TestRequestParam" method = "post">
            Your Student Id <input type="text" name="id"/>
            Your Name <input type="text" name="name"/><br>
            <h2>Favorite Subject</h2> 
            <input type="checkbox" value ="Web Programming" name="subjects"/>Web Programming<br>
            <input type="checkbox" value ="Computer Network" name="subjects"/>Computer Network<br>
            <input type="checkbox" value ="Network Programming" name="subjects"/>Network Programming<br>
            <input type="checkbox" value ="Database Administrator" name="subjects"/>Database Administrator<br>
            <input type="checkbox" value ="Computer Security" name="subjects"/>Computer Security<br>
            <input type="checkbox" value ="Software Process" name="subjects"/>Software Process<br><br>
            <input class="submit" type="submit" value="submit"/>

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
                <td>Your Favorite Subjects : </td>
                <td>
                    <c:forEach items="${subjectList}" var="str">
                        ${str}<br>

                    </c:forEach>
                </td>
            </tr>

        </table>
    </body>
</html>
