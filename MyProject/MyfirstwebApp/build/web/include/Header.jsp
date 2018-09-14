<%-- 
    Document   : Header
    Created on : Aug 10, 2018, 3:15:37 PM
    Author     : INT303
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class ="container-fluid" style="background-color: ${cookie.bgColor.value}">
    
              
              <table class="table">
              <tr>
              <center><a href="index.html" title="Back to Home"><img src="dogHome.png" width="120"/></a></center><p></p>
              <td><h1 style ="font-size: 30px">${param.title}</h1></td>

              <c:if test="${cart!=null}">

              </c:if>
              <c:choose>
              <c:when test ="${sessionScope.user!=null}">
              Hello${sessionScope.user.contactfirstname}
              <a href ="Logout">Logout</a>
              </c:when>
              <c:otherwise>
                  Hello <a href ="Login">Guest</a>
              </c:otherwise>
              </c:choose>

              </tr>

              </table>
              </div>
              <hr>
              Session id: ${cookie.JSESSIONID.value}
              <hr>