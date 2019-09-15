<%-- 
    Document   : manage-booking-result-list
    Created on : Sep 13, 2019, 7:51:10 AM
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
            <div class="manage-book-result-list-content">
                <h3 class="heading-result-list">All Bookings</h3>
                <table id="flights">
                    <tr>
                        <th>Reservation Code</th>
                        <th>From</th>
                        <th>To</th>
                        <th>Issue Date</th>
                        <th></th>
                    </tr>
                    
                    <tr>
                        <td>123A321BE</td>
                        <td>Hà Nội</td>
                        <td>Đà Nẵng</td>
                        <td>13/09/2018</td>
                        <td><a href="#">Chi Tiết</a></td>
                    </tr>
                    
                    <tr>
                        <td>124A321BE</td>
                        <td>Sài Gòn</td>
                        <td>Đà Nẵng</td>
                        <td>14/09/2018</td>
                        <td><a href="#">Chi Tiết</a></td>
                    </tr>
                </table>
            </div>
        </div>
    </body>
</html>
