<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />
    <title>Cookbook | Register</title>
    <jsp:include page="../common/styles.jsp" />
    <link href="../../resources/styles/register/register.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form method="post" action="/register-step-2" modelAttribute="user" cssClass="form-horizontal form-display">
        <h2>Step 2</h2>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
                <h3>Do you eat meat?</h3>
                <input type="checkbox" data-group-cls="btn-group-lg">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
                <h3>Do you like spicy food?</h3>
                <input type="checkbox" data-group-cls="btn-group-lg">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
                <h3>Do you like fish?</h3>
                <input type="checkbox" data-group-cls="btn-group-lg">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
                <h3>Do you like chicken?</h3>
                <input type="checkbox" data-group-cls="btn-group-lg">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-10 col-sm-offset-2">
                <h3>Do you see yourself as a good cook?</h3>
                <input type="checkbox" data-group-cls="btn-group-lg">
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-2">
                <button type="submit" class="btn btn-primary btn-block">Next</button>
            </div>
        </div>
    </form:form>
</div>
<jsp:include page="../common/scripts.jsp" />
<script src="../../resources/scripts/common/bootstrap-checkbox.min.js" defer></script>
<script src="../../resources/scripts/register/register.js" defer></script>
</body>
</html>
