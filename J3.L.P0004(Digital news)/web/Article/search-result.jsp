<%-- 
    Document   : search-result
    Created on : Sep 16, 2019, 8:24:23 AM
    Author     : luong
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
                    <div class="search-result">

                        <c:forEach var="art" items="${searchList1}">
                            <a href="article?id=${art.id}">${art.title}</a></br>
                        </c:forEach>
                    </div>

                </div>

                <%@include file="../ref.jsp" %>
            </div>
            <%@include file="../footer.jsp" %>
        </div>
    </body>
</html>
