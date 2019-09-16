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
                        <p>Archaeological excavations indicate that Vietnam was inhabited as early as the Paleolithic age. The ancient Vietnamese nation was annexed by China in the 2nd century BC, which subsequently made Vietnam a division of China for over a millennium. The first independent monarchy emerged in the 10th century AD, paving the way for successive imperial dynasties as the nation expanded geographically southward until the Indochina Peninsula was colonised by the French in the mid-19th century. Modern Vietnam was born upon the Declaration of Independence from France in 1945. Following Vietnamese victory against the French in the First Indochina War, which ended in 1954, the nation was divided into two rival states: communist North and anti-communist South. Conflicts intensified in the Vietnam War, which saw extensive US intervention in support of South Vietnam and ended with North Vietnamese victory in 1975.</p>

                        <p>After North and South Vietnam were reunified under a unitary socialist government in 1976, the country became economically and politically isolated until 1986, when the Communist Party initiated a series of economic and political reforms that facilitated Vietnamese integration into world politics and the global economy. As a result of the successful reforms, Vietnam has enjoyed a high GDP growth rate, consistently ranked among the fastest-growing countries in the world, although it faces challenges including poverty, corruption and inadequate social welfare. By 2010, Vietnam had established diplomatic relations with 178 countries. It is a member of the UN, ASEAN, APEC, WTO and the Organisation Internationale de la Francophonie (OIF).</p>
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
        </div>

        
    </body>
</html>
