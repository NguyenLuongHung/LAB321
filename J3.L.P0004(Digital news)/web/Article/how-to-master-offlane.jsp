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
                        <p>Get used to blocking spots for camps and sapping xp/stealing jungle creeps vs lanes that pull a lot, awareness for when enemy heroes that might consider ganking you are missing is important (ex: storm or clock missing from lane when their lane is pushed in is obviously dangerous but shadow fiend is more likely to be in the jungle razing camps or something)</p>

                        <p>Most of the other things to consider when offlaning are unique to the hero you are playing, like blocking your creeps with clockwerk to have to lane push towards you for guaranteed experience and blocking camps with rocket, while lone druid can mess with pulls easily, bounty hunter can get bonus damage from shadow walk twice if you attack during the fade time which is great for trading damage and getting last hits, and windrunner can use windrun for easy last hits and harass while having 100% evasion instead of saving it to escape, timber can a-click enemy heroes to take creep aggro for easy reactive armour stacks... Also get used to timings as to whether you should sit and farm in an easier lane or move around and make stuff happen. Maybe watch some replays of good offlane players, although high level teams obviously play very differently to pub teams it's probably a good shot</p>
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
