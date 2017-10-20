<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />
    <title>Cookbook | Login</title>
    <jsp:include page="../common/styles.jsp" />
    <link href="../resources/styles/login.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div class="account-form">
                <form method="post" action="${pageContext.request.contextPath}/login" class="form-login">
                    <img src="../resources/images/profile-login.png" class="profile-img" />
                    <div class="form-group">
                        <input name="username" type="text" class="form-control" placeholder="Username" autofocus required />
                        <input name="password" type="password" class="form-control" placeholder="Password" required />
                        <button type="submit" class="btn btn-lg btn-default btn-block">Log In</button>
                        <p class="text-center">Need an Account? <a href="${pageContext.request.contextPath}/register">Sign Up!</a></p>
                    </div>
                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                </form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../common/scripts.jsp" />
</body>
</html>
