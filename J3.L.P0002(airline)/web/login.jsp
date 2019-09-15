<%-- 
    Document   : login
    Created on : Sep 12, 2019, 10:02:43 AM
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
            <div class="login-content">

                <div class="login-box">
                    <span class="heading-login-primary">Login</span>
                    
                    <div class="login-detail">
                        <form action="#" method="get">
                            <table>
                                <tr>
                                    <td class="label"><span>Email:</span></td>
                                    <td class="value"><input type="text" name="username"/></td>
                                </tr>
                                <tr>
                                    <td class="label"><span>Password:</span></td>
                                    <td class="value"><input type="password" name="password"/></td>
                                </tr>
                                <tr>
                                    <td class="label"></td>
                                    <td class="value">
                                        <input type="submit" value="Login"/>
                                        <input type="submit" value="Register"/>
                                    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>
