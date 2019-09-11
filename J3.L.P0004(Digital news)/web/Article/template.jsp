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
                    <span class="article-title"><h3>Making security feeds smarter via machine learning</h3></span>
                    <img class="img-title" src="Resources/img/i1.jpg"/>
                    <p>Espite the fact that, as Shakespeare said, "the pen is mightier than the sword," the pen itself is not enough to make an effective writer. In fact, though we may all like to think of ourselves as the next Shakespeare, inspiration alone is not the key to effective essay writing. You see, the conventions of English essays are more formulaic than you might think – and, in m</p>

                    <p>Espite the fact that, as Shakespeare said, "the pen is mightier than the sword," the pen itself is not enough to make an effective writer. In fact, though we may all like to think of ourselves as the next Shakespeare, inspiration alone is not the key to effective essay writing. You see, the conventions of English essays are more formulaic than you might think – and, in m</p>
                    <hr/>
                    <div class="article-detail">
                        <img src="Resources/img/comment.gif"/>
                        <img src="Resources/img/timeicon.gif"/>
                        <span class="author-publish">By ${temp_art.author} | ${temp_art.date}</span>
                    </div>
                </div>

            </div>

            <%@include file="../ref.jsp" %>
        </div>
            <%@include file="../footer.jsp" %>
    </body>
</html>
