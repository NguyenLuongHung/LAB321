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
                        <p>Yes supports impact in late game is not comparable to core heroes but they provide a strong late game for they by providing countless opportunities for them in early and mid game and warding. A team with no supports and no warding is always vulnerable to ganks and when there are 5 carries in a team, In dual laning, both carries try to get the last hits for them selves and this has no result but slow farming process for both of them.</p>

                        <p>Before being a good support, You must be a good person or at least a responsible one. You must be willing to prioritize your carry's need to yours. Offer the last hits on a silver plate and harass anyone who comes to deny it from your precious carry. Take care of your carry and keep him fed and safe even if he's dumb as dog'd foot, Babysit him until he grows stronger and "Carry" you to victory.
                            Should I sacrifice my self to keep my carry alive? Yes if necessary but you're better try to keep both of you alive, Most of your gold is being spent on support items and wards and death can delay your item a lot. Try to keep a disable off cooldown in order to save your carry (And your self).</p>
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
