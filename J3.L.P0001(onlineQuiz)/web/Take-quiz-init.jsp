<%-- 
    Document   : Take-quiz-init
    Created on : Aug 14, 2019, 4:07:36 PM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="header.jsp" %>
            <div class="take-quiz-enter">
                <h2>Welcome ${user.name}</h2>
                <form action="#">
                    <span class="init">Enter number of questions:</span></br>
                    <input type="text" name="init"/></br>
                    <input type="submit" value="Start" id="start"/>
                    
                </form>
            </div>
        </div>
    </body>
</html>
