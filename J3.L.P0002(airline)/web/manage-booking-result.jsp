<%-- 
    Document   : manage-booking-result
    Created on : Sep 12, 2019, 4:26:17 PM
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
            <div class="manage-book-result-content">
                <span class="heading-booking-recepit">eTicket Receipt</span>
                <hr/><br/>
                <span>Prepared For</span><br/><br/>
                <span>Duy Dao Trong</span><br/><br/>
                <span>RESERVATION CODE:</span> <span>33F353f2</span><br/><br/>
                <span>TICKET ISSUE DATE: 09/08/2016 00:00:00</span><br/><br/>

                <span class="heading-booking-detail">Itinerary Details</span><br/>
                <hr/>
                <table>
                    <tr>
                        <td>TRAVEL DATE</td>
                        <td>DEPARTURE</td>
                        <td>ARRIVAL</td>
                    </tr>
                    <tr>
                        <td>09/12/2016 00:00:00</td>
                        <td>Hà Nội</br>Time:04:00PM</td>
                        <td>Đà Nẵng</br>Time:05:30PM</td>
                    </tr>

                </table>
            </div>
        </div>
    </body>
</html>
