<%-- 
    Document   : manage-booking-search
    Created on : Sep 12, 2019, 4:11:32 PM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/css/manage.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="Templates/header.jsp" %>
            <div class="manage-booking-search-content">
                <h3>Search Booking</h3>
                <form action="#" method="get">
                    <table>
                        <tr>
                            <td></td>
                            <td>
                                <input type="radio" value="code" name="search-type"/>Reservation Code
                                <input type="radio" value="all" name="search-type"/>All Bookings
                            </td>
                        </tr>
                        
                        <tr>
                            <td><span>Enter reservation code:</span></td>
                            <td><input type="text" name="reverse-code"/></td>
                        </tr>
                        
                        <tr>
                            <td></td>
                            <td><input type="submit" value="Search"/></td>
                        </tr>
                    </table>
                </form>
            </div>
        </div>
    </body>
</html>
