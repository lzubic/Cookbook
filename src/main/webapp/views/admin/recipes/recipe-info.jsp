<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
    <link href="../../../resources/styles/admin/recipes/recipe-info.css" rel="stylesheet">
</head>
<body>
<header>
    <jsp:include page="../menu/top-menu.jsp" />
</header>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2 sidebar">
            <jsp:include page="../menu/side-menu.jsp" />
        </div>
        <div class="col-sm-10 col-sm-offset-2 main">
            <div class="fond"> <span class="s1">cook </span><span class="s2">book</span></div>
            <div class="card">
                <div class="thumbnail"><img class="left" src="http://cdn2.hubspot.net/hubfs/322787/Mychefcom/images/BLOG/Header-Blog/photo-culinaire-pexels.jpg"/></div>
                <div class="right">
                    <h1>${recipe.name}</h1>
                    <div class="author">
                        <i class="fa fa-clock-o" aria-hidden="true"></i>
                        <h2>${recipe.preparationTime}</h2>
                    </div>
                    <div class="author">
                        <i class="fa fa-cutlery" aria-hidden="true"></i>
                        <h2>${recipe.numberOfServings}</h2>
                    </div>
                    <div class="separator"></div>
                    <p>${recipe.description}</p>
                    <div class="separator"></div>
                    <p>${recipe.instructions}</p>
                </div>
                <h5>${recipe.mealType}</h5>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
</body>
</html>
