<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../../common/meta.jsp" />
    <title>Cookbook | Admin</title>
    <jsp:include page="../../common/styles.jsp" />
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
            <h1 class="page-header">Users</h1>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>First Name</th>
                        <th>Last Name</th>
                        <th>Username</th>
                        <th>Email</th>
                        <th colspan="2"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${users}" var="user" varStatus="status">
                        <tr>
                            <td>${status.index + 1}</td>
                            <td>${user.firstName}</td>
                            <td>${user.lastName}</td>
                            <td>${user.username}</td>
                            <td>${user.email}</td>
                            <td><a href="/admin/users/${user.id}">View</a></td>
                            <td><a href="/admin/users/delete/${user.id}">Delete</a></td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
</body>
</html>
