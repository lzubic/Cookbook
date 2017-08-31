<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />

    <title>Cookbook | Admin</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
    <link href="../../resources/styles/admin/dashboard.css" rel="stylesheet">
    <link href="../../resources/styles/admin/recipes/recipe-form.css" rel="stylesheet">
</head>
<body>
<jsp:include page="./menu/top-menu.jsp" />
<div class="container-fluid">
    <div class="row">
        <jsp:include page="./menu/side-menu.jsp" />
        <jsp:include page="./recipes/recipe-form.jsp" />
    </div>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
</body>
</html>
