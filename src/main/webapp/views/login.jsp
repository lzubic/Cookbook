<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookbook | Login</title>
    <link href="${pageContext.request.contextPath}/resources/styles/bootstrap/bootstrap.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/styles/login.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form action="/login" method="post" class="form-login">
        <h2 class="form-heading">Log in</h2>
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="Username"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="/registration">Create an account</a></h4>
        </div>
    </form>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/scripts/bootstrap/bootstrap.min.js"></script>
</body>
</html>