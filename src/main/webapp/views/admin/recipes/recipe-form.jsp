<h1 class="page-header">Create New Recipe</h1>
<form>
    <div class="form-group">
        <label for="photo">Recipe Photo</label>
        <input type="file" class="form-control-file" id="photo" aria-describedby="fileHelp">
    </div>
    <div class="form-group">
        <label for="name">Recipe Name</label>
        <input type="text" class="form-control" id="name">
    </div>
    <div class="form-group">
        <label for="description">Description</label>
        <textarea class="form-control" id="description" rows="3"></textarea>
    </div>
    <div class="form-group">
        <label for="ingredients">Ingredients</label>
        <textarea class="form-control" id="ingredients" rows="3" cols="20" placeholder="Put each ingredient on its own line."></textarea>
    </div>
    <div class="form-group">
        <label for="instructions">Instructions</label>
        <textarea class="form-control" id="instructions" rows="3" cols="20" placeholder="Put each step on its own line."></textarea>
    </div>
    <div class="form-group row">
        <div class="col-xs-6">
            <label for="preparation-time">Preparation Time</label>
            <input class="form-control" id="preparation-time" type="text">
        </div>
        <div class="col-xs-6">
            <label for="number-of-servings">Number Of Servings</label>
            <input class="form-control" id="number-of-servings" type="text">
        </div>
    </div>
    <div class="form-group row">
        <div class="col-xs-6">
            <label for="meal-type">Meal Type</label>
            <select class="form-control" id="meal-type">
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
            <label for="dish-type">Dish Type</label>
            <select class="form-control" id="dish-type">
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
    </div>
    <button type="submit" class="btn btn-primary">Save</button>
</form>
