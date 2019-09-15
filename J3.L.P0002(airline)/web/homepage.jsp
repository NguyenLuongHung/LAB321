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
        <link href="Resources/css/homepage.css" rel="stylesheet" type="text/css"/>
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
                                    <span><input onclick="show()" type="radio" name="flightType" value="round-trip" checked="true"/>Round Trip</span>
                                    <span><input onclick="hide()"type="radio" name="flightType" value="one-way"/>One way</span>
                                </div>
                            </div>
                            <div class="flight-detail">
                                <table>
                                    <tr>
                                        <td><span>From:</span></td>
                                        <td>
                                            <select name="from">
                                                <option>Hà Nội</option>
                                                <option>Đà Nẵng</option>
                                                <option>Hồ Chí Minh</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>To:</span></td>
                                        <td>
                                            <select name="to">
                                                <option>Hà Nội</option>
                                                <option>Đà Nẵng</option>
                                                <option>Hồ Chí Minh</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td><span>Departure:</span></td>
                                        <td><input type="date" name="departure"/></td>
                                    </tr>
                                    <tr id="return-date">
                                        <td><span>Return:</span></td>
                                        <td><input type="date" name="return"/></td>
                                    </tr>
                                </table>
                            </div>
                            <span class="search-btn"><input type="submit" value="Search"/></span>
                        </form>

                    </div>
                </div>
            </div>
        </div>
        <script src="Resources/js/script.js" type="text/javascript"></script>
    </body>
</html>
