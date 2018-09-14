<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:19:57 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table class="table">
            <tr>
            <td><h1>${param.title}</h1></td>
            <td>
                <c:if test="$cart!=nul">
                    <a href="ShowCartServlet">your cart: (${cart.totalQuantity})</a>
                </c:if>
                &nbsp;&nbsp;&nbsp;
                <c:choose>
                    <c:when test="${sessionScope.user!=null}">
                        hello ${sessionScope.user.name}
                    </c:when>
                    <c:otherwise>
                        Hello guest
                    </c:otherwise>
                </c:choose>
            </tr>
        </table>
    </body>
</html>
