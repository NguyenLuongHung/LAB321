<%-- 
    Document   : booking
    Created on : Sep 12, 2019, 10:53:47 AM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="Resources/css/booking.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="container">
            <%@include file="Templates/header.jsp" %>
            <div class="booking-content">
                <div class="flight-direction">
                    <span class="small-heading-departure">Departure: Hanoi</span>
                    <span class="small-heading-return">Return: Danang</span>
                </div>

                <div class="select-departing">
                    <h1>1. Select Departing Flight</h1>
                    <div class="big-heading-departure">
                        <h3>Ha Noi <span class="gray-text">to</span> Da Nang</h3>
                        <div class="departure-list">
                            <span class="departing-date">09/17/2016</span>
                            <form action="#" method="get">
                                <table>
                                    <tr>
                                        <td>Departs</td>
                                        <td>Arrives</td>
                                        <td>Flight Detail</td>
                                        <td></td>
                                    </tr>

                                    <tr>
                                        <td>04:00PM</td>
                                        <td>05:30PM</td>
                                        <td>1h30</td>
                                        <td class="price-row"><input type="radio" name="selected-flight"/>
                                            <span class="price">$134.00</span>
                                        </td>
                                    </tr>
                                </table>
                                <p class="note">Note: Prices quoted are per adult passenger in USD.ssssssssssssssssss
                                    ssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssssss
                                </p>
                                <input type="submit" value="Save"/>
                            </form>


                        </div>
                    </div>
                </div>

                <div class="select-return">
                    <div class="big-heading-return">
                        <div class="return-list">

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
