<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:13:24 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<table class="table">
    <tr>
        <a href="index.html" title="Back to Home"><img src="simple_wolf.png" width="120"/></a>
                <h4>${param.title}</h4>
                
        <c:if test="${cart!=null}">
                 <a href="ShowCart">Your Cart(${cart.totalQuantity})</a>
        </c:if>
                 &nbsp;&nbsp;&nbsp;
        <c:choose>
            <c:when test="${sessionScope.user!=null}">
                Hello<a href="Logout"> ${sessionScope.user.contactfirstname},</a>
            </c:when>
            <c:otherwise>
                Hello <a href="Login">Guest</a>
            </c:otherwise>
        </c:choose>
        </td>
    </tr>
</table>
                <hr>
                Session Id : ${cookie.JSESSIONID.value}
                </hr>
        
