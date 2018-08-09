<%-- 
    Document   : SimpleCalculatorView
    Created on : 8 ส.ค. 2561, 3:17:55
    Author     : PANUPONG  INTHILAD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Result JSP Page</title>
    </head>
    <style>
        body{
            margin: 250px 250px;
            text-align: center;
            height: 100vh;
            overflow-y: hidden;
        background: linear-gradient(to bottom right, #9900ff, #33cc33); /* Standard syntax (must be last) */ 
        }
    </style>
    <body>
   
        <p>${sc}</p>
        <h1 style="font-size:300%;">--  Result  --</h1>
        <div style="font-size:160%;"> 
            " ${sc.result} "   
        </div>
   
</body>
</html>
