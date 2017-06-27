<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<h1 class="page-header">Create New Recipe</h1>
<form:form method="post" action="/admin/recipes/new" modelAttribute="recipe">
    <%--<div class="form-group">
        <label for="photo">Recipe Photo</label>
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
        <form:textarea path="instructions" cssClass="form-control" rows="3" cols="20" placeholder="Put each step on its own line." />
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
    <h3 class="page-header">Ingredients</h3>
    <div class="form-group">
        <div class="col-xs-4">
            <form:select path="ingredients.type" items="${allIngredients.type}" cssClass="form-control" multiple="true" />
        </div>
        <div class="col-xs-4">
            <form:select path="ingredients.name" items="${allIngredients.name}" cssClass="form-control" multiple="true" />
        </div>
        <%--<div class="col-xs-4">
            <form:input path="quatity" cssClass="form-control" />
        </div>--%>
    </div>
    <%--<h3 class="page-header">Categorize Recipe</h3>
    <div class="form-group row">
        <div class="col-xs-4">
            <input type="checkbox" id="category-diabetic" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-diabetic">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Diabetic</span>
                </label>
            </div>
        </div>
        <div class="col-xs-4">
            <input type="checkbox" id="category-gluten-free" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-gluten-free">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Gluten Free</span>
                </label>
            </div>
        </div>
        <div class="col-xs-4">
            <input type="checkbox" id="category-healthy" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-healthy">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Healthy</span>
                </label>
            </div>
        </div>
    </div>
    <div class="form-group row">
        <div class="col-xs-4">
            <input type="checkbox" id="category-low-fat" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-low-fat">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Low Fat</span>
                </label>
            </div>
        </div>
        <div class="col-xs-4">
            <input type="checkbox" id="category-vegan" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-vegan">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Vegan</span>
                </label>
            </div>
        </div>
        <div class="col-xs-4">
            <input type="checkbox" id="category-vegetarian" autocomplete="off" />
            <div class="btn-group">
                <label class="btn btn-default" for="category-vegetarian">
                    <span class="fa fa-check-square-o fa-lg"></span>
                    <span class="fa fa-square-o fa-lg"></span>
                    <span class="content">Vegetarian</span>
                </label>
            </div>
        </div>
    </div>--%>
    <button type="submit" class="btn btn-primary">Save</button>
</form:form>
