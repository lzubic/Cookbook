<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h1 class="page-header">Recipes</h1>
<div class="table-responsive">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>#</th>
                <th>Name</th>
                <th>Description</th>
            </tr>
        </thead>
        <tbody>
        <c:forEach items="${recipes}" var="recipe" varStatus="loop">
            <tr>
                <td>${loop.index}</td>
                <td>${recipe.name}</td>
                <td>${recipe.description}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
