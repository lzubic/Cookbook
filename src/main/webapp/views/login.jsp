<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <jsp:include page="./common/meta.jsp" />
    <title>Cookbook | Login</title>
    <jsp:include page="./common/styles.jsp" />
    <link href="../resources/styles/login.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form action="${pageContext.request.contextPath}/login" method="post" class="form-login">
        <h2 class="form-heading">Log in</h2>
        <div class="form-group">
            <input name="username" type="text" class="form-control" placeholder="Username"/>
            <input name="password" type="password" class="form-control" placeholder="Password"/>
            <button class="btn btn-lg btn-primary btn-block" type="submit">Log In</button>
            <h4 class="text-center"><a href="${pageContext.request.contextPath}/register">Create an account</a></h4>
        </div>
        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    </form>
</div>
<jsp:include page="./common/scripts.jsp" />
</body>
</html>
