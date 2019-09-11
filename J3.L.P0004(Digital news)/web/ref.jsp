<div class="reference">
    <div class="reference-align">
        <span class="article-title"><h3>Digital News</h3></span>
        <p>${recent_art.description}<a href="article?id=${recent_art.id}">... More</a></p>
        <span class="article-title"><h3>Search</h3></span>
        <div class="search-box">
            <input type="text" name="search-title" class="search-title"/><a class="search-btn" href="#">Go</a>
        </div>
        <span class="article-title"><h3>Last Articles</h3></span>
        <div class="five-recent-articles">
            <c:forEach var="article" items="${art_list}">
                <a href="article?id=${article.id}">${article.title}</a></br>
            </c:forEach>
        </div>
    </div>
</div>