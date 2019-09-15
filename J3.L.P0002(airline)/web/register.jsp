<%-- 
    Document   : register
    Created on : Sep 12, 2019, 5:10:39 PM
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
            <div class="register-content">
                <h4 class="heading-register">Register</h4>
                <form action="#" method="get">
                    <table>
                        <tr>
                            <td><span class="heading-bold">New Account</span></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>Email:</td>
                            <td><input type="text" name="email"/></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password"/></td>
                        </tr>
                        <tr>
                            <td>Verify Password:</td>
                            <td><input type="password" name="verify"/></td>
                        </tr>
                        <tr>
                            <td><span class="heading-bold">Contact Information</span></td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>First Name:</td>
                            <td><input type="text" name="firstName"/></td>
                        </tr>
                        <tr>
                            <td>Last Name:</td>
                            <td><input type="text" name="lastName"/></td>
                        </tr>
                        <tr>
                            <td>Address</td>
                            <td><input type="text" name="address"/></td>
                        </tr>
                        <tr>
                            <td>Phone Number:</td>
                            <td><input type="text" name="phone"/></td>
                        </tr>
                        <tr>
                            <td>Sex:</td>
                            <td>
                                <select name="gender">
                                    <option value="male">Male</option>
                                    <option value="female">Female</option>
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Age:</td>
                            <td><input type="text" name="age"/></td>
                        </tr>
                        <tr>
                            <td>Card Number:</td>
                            <td><input type="text" name="careNumber"/></td>
                        </tr>
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Register"</td>
                        </tr>
                        
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
