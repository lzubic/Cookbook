<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
    <link href="../../../resources/styles/admin/home.css" rel="stylesheet">
</head>
<body>
<header><jsp:include page="../menu/top-menu.jsp" /></header>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2 sidebar"><jsp:include page="../menu/side-menu.jsp" /></div>
        <div class="col-sm-10 col-sm-offset-2 main">
            <h1 style="margin-top: 0;">Category</h1><hr>
            <form:form method="post" action="/admin/categories" modelAttribute="category">
                <div class="form-group">
                    <form:label path="name">Name</form:label>
                    <form:input path="name" cssClass="form-control" required="true" />
                </div>
                <button type="submit" class="btn btn-primary btn-lg">Save</button>
                <a href="${pageContext.request.contextPath}/admin/categories" class="btn btn-default btn-lg">Cancel</a>
            </form:form>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
</body>
</html>
