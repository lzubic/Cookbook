<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <meta name="_csrf" content="${_csrf.token}" />
    <meta name="_csrf_header" content="${_csrf.headerName}" />
    <title>Cookbook</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/user/recipes/recipe-list.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <header><jsp:include page="../menu/menu.jsp" /></header>
    <div class="well well-sm">
        <strong>Recipes</strong>
        <div class="btn-group">
            <a href="#" id="list" class="btn btn-default btn-sm"><span class="glyphicon glyphicon-th-list">
            </span>List</a> <a href="#" id="grid" class="btn btn-default btn-sm"><span
                class="glyphicon glyphicon-th"></span>Grid</a>
        </div>
    </div>
    <div id="recipes" class="row">
    <c:forEach items="${recipes}" var="recipe">
    <div class="list-group">
        <div class="item  col-sm-4">
            <div class="thumbnail">
                <img class="group list-group-image" src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                <div class="caption">
                    <h4 class="group inner list-group-item-heading">${recipe.name}</h4>
                    <p class="group inner list-group-item-text truncate">${recipe.description}</p>
                    <div class="row">
                        <div class="col-sm-12">
                            <p class="lead">${recipe.mealType}</p>
                        </div>
                        <div class="col-sm-12">
                            <a class="btn btn-link pull-right" href="${pageContext.request.contextPath}/recipes/${recipe.id}">View</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </c:forEach>
    </div>
    <footer><jsp:include page="../footer/footer.jsp" /></footer>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="../../../resources/scripts/user/recipes/recipe-list.js" defer></script>
</body>
</html>
