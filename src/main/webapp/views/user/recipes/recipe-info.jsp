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
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
    <link href="../../../resources/styles/user/recipes/recipe-info.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <header><jsp:include page="../menu/menu.jsp" /></header>
    <div class="row">
        <div class="col-sm-6">
            <div class="recipe">
                <img id="item-display" src="../../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}" />
            </div>
        </div>
        <div class="col-sm-6">
            <div class="row">
                <div class="col-sm-12"><h1>${recipe.name}</h1></div>
            </div>
            <div class="row">
                <div class="rating">
                    <label><input type="radio" name="rate" value="5" ${rating != null && rating.rate == 5 ? 'checked' : ''} /></label>
                    <label><input type="radio" name="rate" value="4" ${rating != null && rating.rate == 4 ? 'checked' : ''} /></label>
                    <label><input type="radio" name="rate" value="3" ${rating != null && rating.rate == 3 ? 'checked' : ''} /></label>
                    <label><input type="radio" name="rate" value="2" ${rating != null && rating.rate == 2 ? 'checked' : ''} /></label>
                    <label><input type="radio" name="rate" value="1" ${rating != null && rating.rate == 1 ? 'checked' : ''} /></label>
                </div>
                <input type="hidden" name="recipe" value="${recipe.id}" />
            </div>
            <div class="row">
                <div class="col-sm-3">
                    <h4><i class="fa fa-clock-o" aria-hidden="true"></i> ${recipe.preparationTime}</h4>
                </div>
                <div class="col-sm-9">
                    <h4><i class="fa fa-cutlery" aria-hidden="true"></i> ${recipe.numberOfServings}</h4>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-12"><h4>${recipe.description}</h4></div>
            </div>
            <hr>
            <div class="row">
                <div class="col-sm-12 recipe-meal-type"><h3>${recipe.mealType}</h3></div>
            </div>
            <hr>
            <div class="btn-group">
                <a href="${pageContext.request.contextPath}/home" class="btn btn-success">Back</a>
            </div>
            <div class="btn-group">
                <button type="button" class="btn btn-danger">Add to Favorites</button>
            </div>
        </div>
    </div>
    <hr>
    <div class="row">
        <div class="col-sm-12">
            <ul class="nav nav-tabs nav_tabs">
                <li class="active"><a href="#instructions" data-toggle="tab">Instructions</a></li>
                <li><a href="#ingredients" data-toggle="tab">Ingredients</a></li>
            </ul>
            <div class="tab-content">
                <div class="tab-pane fade in active" id="instructions">
                    <section class="container">
                        <h3>${recipe.instructions}</h3>
                    </section>
                </div>
                <div class="tab-pane fade" id="ingredients">
                    <section class="container">
                        <c:forEach items="${recipe.ingredients}" var="ingredient">
                            <h3>${ingredient.name}</h3>
                        </c:forEach>
                    </section>
                </div>
            </div>
            <hr>
        </div>
    </div>
    <footer><jsp:include page="../footer/footer.jsp" /></footer>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="../../../resources/scripts/user/recipes/recipe-info.js" defer></script>
</body>
</html>
