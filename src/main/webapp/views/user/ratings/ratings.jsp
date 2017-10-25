<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="alert alert-danger text-center cold-start-message">
    <p>In order to get recommendations, please rate some recipes <a href="#modal-rating" class="alert-link" data-toggle="modal" data-target="#modal-rating">here</a></p>
</div>
<div id="modal-rating" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Rate Recipes</h4>
            </div>
            <div class="modal-body">
                <div class="row">
                    <c:forEach items="${randomRecipes}" var="recipe" varStatus="status">
                        <div class="col-sm-4">
                            <div class="thumbnail">
                                <img src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                                <div class="caption">
                                    <h4>${recipe.name}</h4>
                                    <p>${recipe.description}</p>
                                </div>
                                <div class="rating text-center">
                                    <label><input type="radio" name="rates-${status.index}" value="5" /></label>
                                    <label><input type="radio" name="rates-${status.index}" value="4" /></label>
                                    <label><input type="radio" name="rates-${status.index}" value="3" /></label>
                                    <label><input type="radio" name="rates-${status.index}" value="2" /></label>
                                    <label><input type="radio" name="rates-${status.index}" value="1" /></label>
                                </div>
                            </div>
                        </div>
                        <input type="hidden" name="recipes-${status.index}" value="${recipe.id}" />
                    </c:forEach>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default btn-done" data-dismiss="modal">Done</button>
            </div>
        </div>
    </div>
</div>
