<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:52:20 AM
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
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Select Your Background ::" />
            <form action="ChooseBackground" method="post">
                
                <input type="text" size="1" disabled style="background-color: tomato; border-radius: 5px;"/>
                <input type="radio" name="bgColor" value="tomato" ${cookie.bgColor !=null && cookie.bgColor.value == "tomato" ? "checked" : ""}> Tomato<br>
                <input type="text" size="1" disabled style="background-color: cornflowerblue; border-radius: 5px;"/>
                <input type="radio" name="bgColor" value="cornflowerblue" ${cookie.bgColor !=null && cookie.bgColor.value == "cornflowerblue" ? "checked" : ""}> Corn Flower Blue <br>
                <input type="text" size="1" disabled style="background-color: darkseagreen; border-radius: 5px;"/>
                <input type="radio" name="bgColor" value="darkseagreen" ${cookie.bgColor !=null && cookie.bgColor.value == "darkseagreen" ? "checked" : ""}> Dark Sea Green<br>
                <input type="text" size="1"disabled style="background-color: wheat; border-radius: 5px;"/>
                <input type="radio" name="bgColor" value="wheat" ${cookie.bgColor !=null && cookie.bgColor.value == "wheat" ? "checked" : ""}> Wheat <br>         
                <input type="submit" value="send">
            </form>
        </div>
    </body>
</html>
