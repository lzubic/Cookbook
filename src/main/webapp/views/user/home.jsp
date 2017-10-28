<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />
    <meta name="_csrf" content="${_csrf.token}" />
    <meta name="_csrf_header" content="${_csrf.headerName}" />
    <title>Cookbook | Home</title>
    <jsp:include page="../common/styles.jsp" />
    <link rel="stylesheet" href="../../resources/styles/user/home.css">
    <link rel="stylesheet" href="../../resources/styles/user/ratings/ratings.css">
</head>
<body>
<div class="container">
    <header><jsp:include page="./menu/menu.jsp" /></header>
    <c:if test="${remoteUser.enabled != true}"><jsp:include page="./ratings/ratings.jsp" /></c:if>
    <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
        <div class="overlay"></div>
        <div class="carousel-inner">
            <div class="item slides active">
                <div class="slide-1"></div>
                <div class="hero"><h1>We are creative</h1></div>
            </div>
            <div class="item slides">
                <div class="slide-2"></div>
                <div class="hero"><h1>We are tasty</h1></div>
            </div>
            <div class="item slides">
                <div class="slide-3"></div>
                <div class="hero"><h1>We are cookbook</h1></div>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12">
                <ol class="carousel-indicators">
                    <li data-target="#bs-carousel" data-slide-to="0" class="active"></li>
                    <li data-target="#bs-carousel" data-slide-to="1"></li>
                    <li data-target="#bs-carousel" data-slide-to="2"></li>
                </ol>
            </div>
        </div>
    </div>
    <article style="margin-top: 30px;">
        <div class="row">
            <c:forEach items="${topRecipes}" var="recipe">
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                        <div class="caption">
                            <h3>${recipe.name}</h3>
                            <p>${recipe.description}</p>
                            <p align="center"><a href="/recipes/${recipe.id}" class="btn btn-primary">View</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </article>
    <footer><jsp:include page="./footer/footer.jsp" /></footer>
</div>
<jsp:include page="../common/scripts.jsp" />
<script src="../../resources/scripts/user/ratings/ratings.js" defer></script>
</body>
</html>
