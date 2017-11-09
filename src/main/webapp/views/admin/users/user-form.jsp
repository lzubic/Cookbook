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
<header><jsp:include page="../menu/top-menu.jsp" /></header>
<div class="container-fluid">
    <div class="row">
        <div class="col-sm-2 sidebar"><jsp:include page="../menu/side-menu.jsp" /></div>
        <div class="col-sm-10 col-sm-offset-2 main">
            <div class="row">
                <div class="col-sm-10 form-horizontal">
                    <h1 style="margin-top: 0;">User</h1><hr>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Username</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-user-circle"></i></div>
                                <input type="text" value="${user.username}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">First Name</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                <input type="text" value="${user.firstName}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Last Name</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-male"></i></div>
                                <input type="text" value="${user.lastName}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Email Address</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-envelope-o"></i></div>
                                <input type="text" value="${user.email}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Date of Birth</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-birthday-cake"></i></div>
                                <input type="text" value="${user.birthday}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Gender</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-intersex"></i></div>
                                <input type="text" value="${user.gender}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Country</label>
                        <div class="col-sm-5">
                            <div class="input-group">
                                <div class="input-group-addon"><i class="fa fa-globe"></i></div>
                                <input type="text" value="${user.country}" class="form-control" disabled>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-sm-3 control-label">Overview</label>
                        <div class="col-sm-5">
                            <textarea rows="10" maxlength="150" class="form-control" disabled>${user.overview}</textarea>
                        </div>
                    </div>
                </div>
                <div class="col-sm-2">
                    <img src="../../../resources/images/users/avatar.jpg" class="img-responsive img-thumbnail">
                </div>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../../common/scripts.jsp" />
</body>
</html>
