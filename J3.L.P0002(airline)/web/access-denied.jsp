<%-- 
    Document   : access-denied
    Created on : Sep 13, 2019, 9:38:32 AM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/css/login.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="Templates/header.jsp" %>
            <div class="access-denied-content">
                <h2 class="heading-access-denied">
                    Sorry, you need to login to access these functions.
                </h2>
                <span class="redirect-login"><a href="#">Click here to redirect to login page!</a></span>
            </div>
        </div>
    </body>
</html>
