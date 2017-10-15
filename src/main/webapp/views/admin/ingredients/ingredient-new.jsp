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
            <h1 style="margin-top: 0;">Ingredient</h1><hr>
            <form:form method="post" action="/admin/ingredients" modelAttribute="ingredient">
                <div class="form-group">
                    <form:label path="name">Name</form:label>
                    <form:input path="name" cssClass="form-control" />
                </div>
                <div class="form-group">
                    <form:select path="characteristics" cssClass="selectpicker" data-live-search="true" multiple="true">
                        <form:options items="${allCharacteristics}" itemValue="id" itemLabel="name" />
                    </form:select>
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
