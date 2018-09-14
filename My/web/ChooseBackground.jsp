<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:52:10 AM
    Author     : INT303
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
            text-align: center;
        }
        
       
    </style>
    <body>
        <div class="container-fluid" style="background-color:${cookie.bgColor.value}" >
            
            <jsp:include page="include/Header.jsp?title=Select Your Background " /><hr>
            <br>
            
            <form action="ChooseBackground" method ="post">
                
                <input type="radio" name="bgColor" value="dark" ${cookie.bgColor != null && cookie.bgColor.value == "dark" ? "checked" : ""}>Dark
                <input type="text" size="3" disdisabled style="background-color: slategray"/>
                <br>
                <input type="radio" name="bgColor" value="bisque" ${cookie.bgColor != null && cookie.bgColor.value == "bisque" ? "checked" : ""}>bisque
                <input type="text" size="3" disdisabled style="background-color: bisque"/>
                <br>
                <input type="radio" name="bgColor" value="silver" ${cookie.bgColor != null && cookie.bgColor.value == "silver" ? "checked" : ""}>Silver
                <input type="text" size="3" disdisabled style="background-color: silver"/>
                <br><br><br>
                <input type="submit"/>
            </form>
        </div>
    </body>
</html>
