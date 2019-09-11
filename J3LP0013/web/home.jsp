<%-- 
    Document   : home
    Created on : Aug 17, 2019, 3:54:12 PM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="Resources/css/style.css" rel="stylesheet" type="text/css"/>
        <link href="https://unpkg.com/ionicons@4.5.10-0/dist/css/ionicons.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="dialbox-img-home">
            <div class="dialbox-img-home-content">
                <span class="close">&times;</span>
                <img src="Resources/img/i282319414620330848._szw1280h1280_.jpg"/>
            </div>
        </div>
        <div class="background">
            <div class="container">

                <%@include file="header.jsp" %>
                <div class="wrapper-content">
                    <div class="wrapper">
                        <div class="content">

                            <div class="first-part">
                                <img class="img-home" src="Resources/img/i282319414620330848._szw1280h1280_.jpg"/>
                            </div>

                            <div class="second-part">
                                <h2>24 types of shushi rolls</h2>
                                <div class="type-div">

                                    <img class="img-type" src="Resources/img/i282319414620340695._szw480h1280_.jpg"/>
                                </div>
                                <div class="type-description-div">
                                    <span class="description">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum.</span>
                                </div>
                            </div>

                        </div>
                        <div class="share">
                            <div class="share-align">
                                <span><h4>Share this page</h4></span>
                                <ul>
                                    <li><i class="icon ion-logo-facebook"></i><a href="#">Share on Facebook</a></li>
                                    <li><i class="icon ion-logo-twitter"></i><a href="#">Share on Twitter</a></li>
                                    <li><i class="icon ion-logo-googleplus"></i><a href="#">Share on Google+</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>

                <%@include file="footer.jsp" %>
            </div>

        </div>
        <script src="Resources/js/jquery-3.4.1.js" type="text/javascript"></script>
        <script src="Resources/js/script.js" type="text/javascript"></script>
    </body>
</html>
