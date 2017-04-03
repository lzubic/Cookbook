<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <title>Cookbook | Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../resources/styles/login.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form action="/login" method="post" class="form-login">
        <h2 class="form-heading">Log in</h2>
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="Username"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="/register">Create an account</a></h4>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
