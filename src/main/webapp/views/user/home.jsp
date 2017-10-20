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
    <div class="jumbotron">
        <h1>Bootstrap Tutorial</h1>
        <p>Bootstrap is the most popular HTML, CSS, and JS framework for developing responsive, mobile-first projects on the web.</p>
    </div>
    <h1 class="my-4">Page Heading</h1>

    <article>
        <div class="row">
            <c:forEach items="${recipes}" var="recipe">
                <div class="col-sm-3">
                    <div class="thumbnail">
                        <img src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                        <div class="caption">
                            <h3>${recipe.name}</h3>
                            <p>${recipe.description}</p>
                            <p align="center"><a href="#" class="btn btn-primary">Open</a></p>
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
