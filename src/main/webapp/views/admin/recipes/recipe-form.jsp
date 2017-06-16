<h1 class="page-header">Create New Recipe</h1>
<form>
    <div class="form-group">
        <label for="inputPhoto">Recipe Photo</label>
        <input type="file" class="form-control-file" id="inputPhoto" aria-describedby="fileHelp">
    </div>
    <div class="form-group">
        <label for="recipeName">Recipe Name</label>
        <input type="text" class="form-control" id="recipeName">
    </div>
    <div class="form-group">
        <label for="recipeDescription">Description</label>
        <textarea class="form-control" id="recipeDescription" rows="3"></textarea>
    </div>
    <div class="form-group">
        <label for="recipeIngredients">Ingredients</label>
        <textarea class="form-control" id="recipeIngredients" rows="3" cols="20" placeholder="Put each ingredient on its own line."></textarea>
    </div>
    <div class="form-group">
        <label for="instructions">Instructions</label>
        <textarea class="form-control" id="instructions" rows="3" cols="20" placeholder="Put each step on its own line."></textarea>
    </div>
    <div class="form-group row">
        <div class="col-xs-6">
            <label for="preparationTime">Preparation Time</label>
            <input class="form-control" id="preparationTime" type="text">
        </div>
        <div class="col-xs-6">
            <label for="numberOfServings">Number Of Servings</label>
            <input class="form-control" id="numberOfServings" type="text">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-xs-6">
            <label for="mealType">Meal Type</label>
            <select class="form-control" id="mealType">
                <option></option>
                <option>Appetizers and Snacks</option>
                <option>Breakfast and Brunch</option>
                <option>Lunch</option>
                <option>Dinner</option>
                <option>Desserts</option>
                <option>Drinks</option>
            </select>
        </div>
        <div class="col-xs-6">
            <label for="dishType">Dish Type</label>
            <select class="form-control" id="dishType">
                <option></option>
                <option>Breads</option>
                <option>Cakes</option>
                <option>Salads</option>
                <option>Smoothies</option>
                <option>Soups, Stews and Chili</option>
                <option>Pasta and Risotto</option>
                <option>Vegetable sides</option>
                <option>Pies and Pastries</option>
                <option>Seafood</option>
                <option>Sandwiches, Pizza and Wraps</option>
            </select>
        </div>
    </div>
    <h1 class="page-header">Categorize Recipe</h1>
    <div class="form-check">
        <div class="checkbox">
            <input id="checkbox1" type="checkbox">
            <label for="checkbox1">
                Diabetic
            </label>
        </div>
        <div class="checkbox checkbox-primary">
            <input id="checkbox2" type="checkbox">
            <label for="checkbox2">Gluten Free</label>
        </div>
        <div class="checkbox checkbox-success">
            <input id="checkbox3" type="checkbox">
            <label for="checkbox3">Healthy</label>
        </div>
        <div class="checkbox checkbox-info">
            <input id="checkbox4" type="checkbox">
            <label for="checkbox4">Low Fat</label>
        </div>
        <div class="checkbox checkbox-warning">
            <input id="checkbox5" type="checkbox">
            <label for="checkbox5">Vegan</label>
        </div>
        <div class="checkbox checkbox-danger">
            <input id="checkbox6" type="checkbox">
            <label for="checkbox6">Vegetarian</label>
        </div>
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
</form>
