<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Recommendations</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/user/recipes/recipe-list.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <header><jsp:include page="../menu/menu.jsp" /></header>
    <div class="row">
        <h1>Collaborative Filtering</h1>
        <c:forEach items="${collaborativeFiltering}" var="recipe">
            <div class="list-group">
                <div class="item col-sm-4">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading">${recipe.name}</h4>
                            <p class="group inner list-group-item-text truncate">${recipe.description}</p>
                            <div class="row">
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
    <div class="row">
        <h1>Content Based</h1>
        <c:forEach items="${contentBased}" var="recipe">
            <div class="list-group">
                <div class="item col-sm-4">
                    <div class="thumbnail">
                        <img class="group list-group-image" src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                        <div class="caption">
                            <h4 class="group inner list-group-item-heading">${recipe.name}</h4>
                            <p class="group inner list-group-item-text truncate">${recipe.description}</p>
                            <div class="row">
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
<script src="../../../resources/scripts/user/recipes/recipe-list.js"></script>
</body>
</html>
