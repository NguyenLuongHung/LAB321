<%-- 
    Document   : homepage
    Created on : Sep 11, 2019, 8:07:07 PM
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
        <div class="container">
            <%@include file="Templates/header.jsp" %>
            <div class="content">

                <div class="container-search">
                    <span class="btnlike heading-search">Flight</span>
                    <div class="seach-box">
                        <form action="#" method="get">
                            <div class="flight-type">
                                <div class="flight-type-content">
                                    <input type="radio"  name="flightType" value="round-trip"/>Round Trip
                                    <input type="radio" name="flightType" value="one-way"/>One way
                                </div>
                            </div>
                            <table>
                                <tr>
                                    <td><span>From:</span></td>
                                    <td>
                                        <select name="from">
                                            <option>Hanoi</option>
                                            <option>Danang</option>
                                            <option>HoChiMinh</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span>To:</span></td>
                                    <td>
                                        <select name="to">
                                            <option>Hanoi</option>
                                            <option>Danang</option>
                                            <option>HoChiMinh</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <td><span>Departure:</span></td>
                                    <td><input type="date" name="departure"/></td>
                                </tr>
                                <tr>
                                    <td><span>Return:</span></td>
                                    <td><input type="date" name="return"/></td>
                                </tr>
                            </table>
                            <input type="submit" value="Search"/>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
