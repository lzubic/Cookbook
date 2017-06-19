<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cookbook | Admin</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../../resources/styles/admin/dashboard.css" rel="stylesheet">
    <link href="../../resources/styles/admin/recipes/recipe-form.css" rel="stylesheet">
</head>
<body>
<jsp:include page="./common/top-menu.jsp" />
<div class="container-fluid">
    <div class="row">
        <jsp:include page="./common/side-menu.jsp" />
        <jsp:include page="./dashboard/dashboard.jsp" />
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
