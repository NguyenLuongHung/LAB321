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
                        <p>I am not that guy that thinks i should be playing ancient tomorrow and its always my teams fault.. I want to know from higher ranked mids to pass on some hints and tips regarding the mid role. I really want to improve my mid game and be a solid mid player for the future.</p>

                        <p>I have been spamming the mid role. playing Visage and meepo mainly. as i play in archon bracket my win rate is really high and i snow ball pretty nicely most games. but i know this isnt going to last long... i have a lot to learn in terms of the mid lane position and know that when i come up to good mids i will be tested a lot more and sure i wont have the success i have now..</p>
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
