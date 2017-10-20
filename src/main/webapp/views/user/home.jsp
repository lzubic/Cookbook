<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />
    <title>Cookbook | Home</title>
    <jsp:include page="../common/styles.jsp" />
    <link rel="stylesheet" href="../../resources/styles/user/menu/menu.css">
    <link rel="stylesheet" href="../../resources/styles/user/home.css">
</head>
<body>
<div class="container">
    <header><jsp:include page="./menu/menu.jsp" /></header>
    <div class="carousel fade-carousel slide" data-ride="carousel" data-interval="4000" id="bs-carousel">
        <!-- Overlay -->
        <div class="overlay"></div>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item slides active">
                <div class="slide-1"></div>
                <div class="hero">
                    <hgroup>
                        <h1>We are creative</h1>
                    </hgroup>
                </div>
            </div>
            <div class="item slides">
                <div class="slide-2"></div>
                <div class="hero">
                    <hgroup>
                        <h1>We are tasty</h1>
                    </hgroup>
                </div>
            </div>
            <div class="item slides">
                <div class="slide-3"></div>
                <div class="hero">
                    <hgroup>
                        <h1>We are cookbook</h1>
                    </hgroup>
                </div>
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
    <h1 class="my-4">Page Heading</h1>

    <article>
        <div class="row">
            <c:forEach items="${recipes}" var="recipe">
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="../../resources/images/recipe-blank.png">
                        <div class="caption">
                            <h3>${recipe.name}</h3>
                            <p>${recipe.description}</p>
                            <p align="center"><a href="/recipes/${recipe.id}" class="btn btn-primary">Open</a></p>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>

        <ul class="pagination justify-content-center">
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    <span class="sr-only">Previous</span>
                </a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">1</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">2</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#">3</a>
            </li>
            <li class="page-item">
                <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    <span class="sr-only">Next</span>
                </a>
            </li>
        </ul>
    </article>
    <footer class="py-5 bg-dark"><jsp:include page="./footer/footer.jsp" /></footer>
</div>
<jsp:include page="../common/scripts.jsp" />
</body>
</html>
