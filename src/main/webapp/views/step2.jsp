<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cookbook | Register</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../resources/styles/register.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form method="post" action="/step2" modelAttribute="user" cssClass="form-horizontal form-display">
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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="../resources/scripts/common/bootstrap-checkbox.min.js" defer></script>
<script src="../resources/scripts/register.js" defer></script>
</body>
</html>
