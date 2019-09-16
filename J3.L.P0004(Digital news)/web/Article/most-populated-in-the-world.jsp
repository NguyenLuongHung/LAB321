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
        <div class="container">
            <%@include file="../header.jsp" %>
            <div class="wrapper">
                <div class="content">
                    <div class="content-align">
                        <span class="article-title"><h3>${temp_art.title}</h3></span>
                        <img class="img-title" src="Resources/img/i1.jpg"/>
                        <p>Figures used in this chart are based on the most up to date estimate or projections[1] by the national census authority where available, and are usually rounded off.

                            Where updated national data are not available, figures are based on the projections for 2019 by the Population Division of the United Nations Department of Economic and Social Affairs.[2]

                            Because the compiled figures are not collected at the same time in every country, or at the same level of accuracy, the resulting numerical comparisons may create misleading conclusions. Furthermore, the addition of figures from all countries may not equal the world total.</p>

                        <p>Not surprisingly, the largest countries in the world in terms of population are China and India, with both countries now having populations of well over a billion. The United States comes in third with just under 325 million residents. The BRIC countries (Brazil, Russia, India and China), generally regarded as the four major emerging economies expected to dominate in the 21st century, are all in the top ten most populous countries, indicating how important the sheer size of their populations are to their economic expansion.</p>
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
        </div>
        <script src="Resources/js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="Resources/js/script1.js" type="text/javascript"></script>
    </body>
</html>
