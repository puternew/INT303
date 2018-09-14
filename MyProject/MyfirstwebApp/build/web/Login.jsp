<%-- 
    Document   : Login
    Created on : Sep 7, 2018, 11:41:05 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>❣Login❣</title>
         <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Authentication :"/>    
            <form action="Login" method="POST">
            <table class="table">
                <tr>
                    <td>✨ Username :</td>
                    <td> <input type="number" name="userName" required /></td>
                </tr>
                <tr>
                    <td>✨ Password :</td>
                    <td><input type="password" name="password" required/></td>
                </tr>
                <tr>
                    <td> <input type="submit" value="Login"/></td>
                </tr>
                <tr>
                    <td colspan="2"><p style="color: goldenrod">${message}</p></td>
                </tr>
            </table>
            </form>
        </div>
    </body>
</html>