<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
    <link href="../../../resources/styles/admin/recipes/recipe-form.css" rel="stylesheet">
</head>
<body>
<header><jsp:include page="../menu/top-menu.jsp" /></header>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2 sidebar"><jsp:include page="../menu/side-menu.jsp" /></div>
        <div class="col-sm-10 col-sm-offset-2 main">
            <h1 style="margin-top: 0;">Recipe</h1><hr>
            <form:form method="post" action="/admin/recipes" modelAttribute="recipe" enctype="multipart/form-data">
                <div class="row">
                    <div class="col-sm-4">
                        <div class="form-group">
                            <label>Photo</label>
                            <div class="input-group">
                                <span class="input-group-btn">
                                    <span class="btn btn-default btn-file">
                                        Browse…<input name="file" type="file" class="photo-upload" />
                                    </span>
                                </span>
                                <form:input path="photo" cssClass="form-control" placeholder="Choose a file..." readonly="true" />
                            </div>
                            <img src="../../../resources/images/recipes/recipe-blank.png" class='recipe-photo' />
                        </div>
                    </div>
                    <div class="col-sm-8">
                        <div class="form-group">
                            <form:label path="name">Name</form:label>
                            <form:input path="name" cssClass="form-control" required="true" />
                        </div>
                        <div class="form-group">
                            <form:label path="description">Description</form:label>
                            <form:textarea path="description" cssClass="form-control" rows="3" />
                        </div>
                        <div class="form-group">
                            <form:label path="instructions">Instructions</form:label>
                            <form:textarea path="instructions" cssClass="form-control" rows="3" cols="20" placeholder="Put each step on its own line" required="true" />
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <form:label path="preparationTime">Preparation Time</form:label>
                                <form:input path="preparationTime" cssClass="form-control" />
                            </div>
                            <div class="form-group col-sm-6">
                                <form:label path="numberOfServings">Number of Servings</form:label>
                                <form:input path="numberOfServings" cssClass="form-control" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <form:label path="mealType">Meal Type</form:label>
                                <form:select path="mealType" cssClass="form-control">
                                    <form:option value="" />
                                    <form:option value="Appetizers and Snacks">Appetizers and Snacks</form:option>
                                    <form:option value="Breakfast and Brunch">Breakfast and Brunch</form:option>
                                    <form:option value="Lunch">Lunch</form:option>
                                    <form:option value="Dinner">Dinner</form:option>
                                    <form:option value="Desserts">Desserts</form:option>
                                    <form:option value="Drinks">Drinks</form:option>
                                </form:select>
                            </div>
                            <div class="form-group col-sm-6">
                                <form:label path="dishType">Dish Type</form:label>
                                <form:select path="dishType" cssClass="form-control">
                                    <form:option value="" />
                                    <form:option value="Breads">Breads</form:option>
                                    <form:option value="Cakes">Cakes</form:option>
                                    <form:option value="Salads">Salads</form:option>
                                    <form:option value="Smoothies">Smoothies</form:option>
                                    <form:option value="Soups, Stews and Chili">Soups, Stews and Chili</form:option>
                                    <form:option value="Pasta and Risotto">Pasta and Risotto</form:option>
                                    <form:option value="Vegetable Sides">Vegetable Sides</form:option>
                                    <form:option value="Pies and Pastries">Pies and Pastries</form:option>
                                    <form:option value="Seafood">Seafood</form:option>
                                    <form:option value="Sandwiches, Pizza and Wraps">Sandwiches, Pizza and Wraps</form:option>
                                </form:select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="form-group col-sm-6">
                                <h3>Categories</h3>
                                <form:select path="categories" cssClass="selectpicker" data-width="100%" data-live-search="true" multiple="true">
                                    <form:options items="${allCategories}" itemValue="id" itemLabel="name" />
                                </form:select>
                            </div>
                            <div class="form-group col-sm-6">
                                <h3>Ingredients</h3>
                                <form:select path="ingredients" cssClass="selectpicker" data-width="100%" data-live-search="true" multiple="true">
                                    <form:options items="${allIngredients}" itemValue="id" itemLabel="name" />
                                </form:select>
                                <%--<form:input path="quantity" cssClass="form-control" />--%>
                            </div>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary btn-lg">Save</button>
                    <a href="${pageContext.request.contextPath}/admin/recipes" class="btn btn-default btn-lg">Cancel</a>
                </div>
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="../../../resources/scripts/admin/recipes/recipe-form.js"></script>
</body>
</html>
