<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
    <link href="../../../resources/styles/user/recipes/recipe-info.css" rel="stylesheet">
</head>
<header><jsp:include page="../menu/menu.jsp" /></header>
<body>
<div class="container-fluid">
    <div class="content-wrapper">
            <div class="item-container">
                <div class="row">
                    <div class="col-md-6">
                        <div class="recipe col-md-6 service-image-left">
                            <img id="item-display" src="../../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}" />
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="recipe-name"><h1>${recipe.name}</h1></div>
                        <div class="recipe-prep"><i class="fa fa-clock-o" aria-hidden="true"></i>
                            <h4>${recipe.preparationTime}</h4></div>
                        <div class="recipe-serv">  <i class="fa fa-cutlery" aria-hidden="true"></i>
                            <h4>${recipe.numberOfServings}</h4></div>
                        <div class="recipe-desc"><p>${recipe.description}</p></div>
                        <div class="recipe-rating"><i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star gold"></i> <i class="fa fa-star-o"></i> </div>
                        <hr>
                        <div class="recipe-type"><h3>${recipe.mealType}</h3></div>
                        <hr>
                        <div class="rating">
                            <label>
                                <input type="radio" name="rating" value="5" title="5 stars"> 5
                            </label>
                            <label>
                                <input type="radio" name="rating" value="4" title="4 stars"> 4
                            </label>
                            <label>
                                <input type="radio" name="rating" value="3" title="3 stars"> 3
                            </label>
                            <label>
                                <input type="radio" name="rating" value="2" title="2 stars"> 2
                            </label>
                            <label>
                                <input type="radio" name="rating" value="1" title="1 star"> 1
                            </label>
                        </div>
                        <hr>
                        <div class="btn-group cart">
                            <a href="${pageContext.request.contextPath}/home" class="btn btn-success">Back</a>
                        </div>
                        <div class="btn-group wishlist">
                            <button type="button" class="btn btn-danger">
                                Add to favorites
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="container-fluid">
                <div class="col-md-12 recipe-info">
                    <ul id="myTab" class="nav nav-tabs nav_tabs">

                        <li class="active"><a href="#service-one" data-toggle="tab">INSTRUCTIONS</a></li>
                        <li><a href="#service-two" data-toggle="tab">REVIEWS</a></li>

                    </ul>
                    <div id="myTabContent" class="tab-content">
                        <div class="tab-pane fade in active" id="service-one">

                            <section class="container recipe-info">
                                <h3><p>${recipe.instructions}</p></h3>
                            </section>

                        </div>
                        <div class="tab-pane fade" id="service-two">
                            <section class="container">

                            </section>
                        </div>
                    </div>
                    <hr>
                </div>
            </div>
    </div>
    <footer class="py-5 bg-dark"><jsp:include page="../footer/footer.jsp" /></footer>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="../../../resources/scripts/user/recipes/recipe-info.js" defer></script>
</body>
</html>