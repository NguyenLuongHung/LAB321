<%-- 
    Document   : body
    Created on : Aug 15, 2019, 8:28:27 PM
    Author     : luong
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%@include file="../header.jsp" %>
        <div class="wrapper">
            <div class="content">
                <div class="content-align">
                    <span class="article-title"><h3>${temp_art.title}</h3></span>
                    <img class="img-title" src="Resources/img/i1.jpg"/>
                    <p>Each year, the Institute for Economics and Peace releases the Global Peace Index. This is a study of 163 independent nations and territories around the world that uses indicators to determine which nations are the most dangerous, as well as which are the most peaceful.</p>

                    <p>There are a total of 23 indicators used to compile this list. These indicators are split across three different categories: militarization, safety and security, and domestic and international conflict.

                        The 2018 study was recently released showing the most peaceful countries in the world. At the top of this list is Iceland. This isn’t a surprise, as this nation has taken the top spot for 10 years in a row. Features that stand out in this country that make it the most peaceful in the world is low crime rates and “non-existent” tension among the economic classes.</p>
                    <hr/>
                    <div class="article-detail">
                        <img src="Resources/img/comment.gif"/>
                        <img src="Resources/img/timeicon.gif"/>
                        <span class="author-publish">By ${temp_art.author} | ${temp_art.date}</span>
                    </div>
                </div>
                <div class="search-result">

                </div>
            </div>

            <%@include file="../ref.jsp" %>
        </div>
        <%@include file="../footer.jsp" %>
        <script src="Resources/js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="Resources/js/script1.js" type="text/javascript"></script>
    </body>
</html>
