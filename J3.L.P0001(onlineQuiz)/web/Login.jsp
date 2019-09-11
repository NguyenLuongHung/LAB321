<%-- 
    Document   : Login
    Created on : Aug 14, 2019, 2:08:40 PM
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
            
            <form class="login" action="#" method="get">
                <h3>Login Form</h3>
                    
                <table>
                    <tr>
                        <td><span>Username:</span></td>
                        <td><input type="text" name="username" /></td>
                    </tr>
                    <tr>
                        <td><span>Password:</span></td>
                        <td><input type="text" name="password" /></td>
                    </tr>
                    <tr>
                        <td><span></span></td>
                        <td><input type="submit" value="Sign in" /><span><a id="register" href="#">Register</a></span></td>
                    </tr>
                </table>
            </form>
        </div>
    </body>
</html>
