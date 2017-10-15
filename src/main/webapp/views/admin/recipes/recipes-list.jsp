<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
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
            <h1 style="margin-top: 0;">Recipes</h1><hr>
            <a href="${pageContext.request.contextPath}/admin/recipes/new" class="btn btn-primary btn-lg" role="button">New</a>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>Name</th>
                        <th>Description</th>
                        <th>Tags</th>
                        <th colspan="2"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${recipes}" var="recipe" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${recipe.name}</td>
                            <td>${recipe.description}</td>
                            <td>
                                <c:forEach items="${recipe.categories}" var="category">
                                    <c:out value="${category.name}" /><br>
                                </c:forEach>
                            </td>
                            <td><a href="/admin/recipes/${recipe.id}/edit">Edit</a></td>
                            <td>
                                <form:form method="delete" action="/admin/recipes/${recipe.id}" cssStyle="margin-bottom: 0;">
                                    <button type="submit" class="btn btn-link btn-delete">Delete</button>
                                </form:form>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
</body>
</html>
