<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
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
            <h1 class="page-header">New Recipe</h1>
            <form:form method="post" action="/admin/recipes/new" modelAttribute="recipe">
                <%--<div class="form-group">
                    <label for="photo">Photo</label>
                    <input type="file" class="form-control-file" id="photo" aria-describedby="fileHelp">
                </div>--%>
                <div class="form-group">
                    <form:label path="name">Name</form:label>
                    <form:input path="name" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <form:label path="description">Description</form:label>
                    <form:textarea path="description" cssClass="form-control" rows="3" />
                </div>
                <div class="form-group">
                    <form:label path="instructions">Instructions</form:label>
                    <form:textarea path="instructions" cssClass="form-control" rows="3" cols="20" placeholder="Put each step on its own line" />
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
                        <form:label path="preparationTime">Preparation Time</form:label>
                        <form:input path="preparationTime" cssClass="form-control" />
                    </div>
                    <div class="col-xs-6">
                        <form:label path="numberOfServings">Number of Servings</form:label>
                        <form:input path="numberOfServings" cssClass="form-control" />
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-xs-6">
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
                    <div class="col-xs-6">
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
                <h3 class="page-header">Categorize Recipe</h3>
                <div class="form-group">
                    <form:select path="tags" cssClass="selectpicker" data-live-search="true" multiple="true">
                        <form:options items="${allRecipeTags}" itemValue="id" itemLabel="name" />
                    </form:select>
                </div>
                <h3 class="page-header">Ingredients</h3>
                <div class="form-group">
                    <form:select path="ingredients" cssClass="selectpicker" data-live-search="true" multiple="true">
                        <form:options items="${allIngredients}" itemValue="id" itemLabel="name" />
                    </form:select>
                    <%--<div class="col-xs-4">
                        <form:input path="quantity" cssClass="form-control" />
                    </div>--%>
                </div>
                <button type="submit" class="btn btn-primary btn-lg">Save</button>
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
</body>
</html>
