<%-- 
    Document   : ChooseBackground
    Created on : Aug 24, 2018, 9:52:58 AM
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
        <div class="container">
            <jsp:include page="include/Header.jsp?title=Select Your Background::"/>
            <form action="ChooseBackground" method="post">
                <input type ="radio" name="bgColor" value="Seagreen" ${cookie.bgColor.value=='Seagreen' ?"checked":""}>Seagreen
                <input type="text" size="3" disabled style="background-color:seagreen"/>
                <br>
                <input type ="radio" name="bgColor" value="Lightseagreen" ${cookie.bgColor.value=='Lightseagreen' ?"checked":""}>Lightsea
                <input type="text" size="3" disabled style="background-color:lightseagreen"/>
                <br>
                <input type ="radio" name="bgColor" value="Steelblue" ${cookie.bgColor.value=='Steelblue' ?"checked":""}>Steelblue
                <input type="text" size="3" disabled style="background-color:steelblue"/>
                <br>
                <input type ="radio" name="bgColor" value="Darkcyan" ${cookie.bgColor.value=='Darkcyan' ?"checked":""}>Darkcyan
                <input type="text" size="3" disabled style="background-color:darkcyan"/>
                <br>

                <input type="submit">
                </form>
        </div>
    </body>
</html>
