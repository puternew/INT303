<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:12:01 PM
    Author     : INT303
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="container-fluid" style="background-color: ${cookie.bgColor.value}">
    <div class="row">
        <div class="col-sm-1">
            <a href="index.html" title="Back to Home"><img src="Playstation.png" width="80"/></a>
        </div>
        <div class="col-sm-3">
            <h4> <br>${param.title}</h4>
        </div>
        <div class="col-sm-6" style="text-align: right;vertical-align: middle">
            <c:if test="${cart!=null}">
                <br><br><a href="ShowCart">Your Cart: (${cart.totalQuantity})</a>
            </c:if>
        </div>
        <div class="col-sm-2">
            <br><br>
            <c:choose>
                <c:when test="${sessionScope.user != null}">
                    Hello ${sessionScope.user.name}
                </c:when>
                <c:otherwise>
                    Hello Guest
                </c:otherwise>
            </c:choose>
        </div>
    </div>
</div>
        Session Id :${cookie.JSESSIONID.value}
<hr>