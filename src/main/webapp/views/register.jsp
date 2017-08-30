<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="./common/meta.jsp" />

    <title>Cookbook | Register</title>

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="../resources/styles/register.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <form:form method="post" action="/register" modelAttribute="user" cssClass="form-horizontal form-display">
        <h2>Registration Form</h2>
        <div class="form-group">
            <form:label path="firstName" cssClass="col-sm-3 control-label">First Name</form:label>
            <div class="col-sm-9">
                <form:input path="firstName" placeholder="First Name" cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="lastName" cssClass="col-sm-3 control-label">Last Name</form:label>
            <div class="col-sm-9">
                <form:input path="lastName" placeholder="Last Name" cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="username" cssClass="col-sm-3 control-label">Username</form:label>
            <div class="col-sm-9">
                <form:input path="username" placeholder="username" cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="email" cssClass="col-sm-3 control-label">Email</form:label>
            <div class="col-sm-9">
                <form:input path="email" placeholder="Email" cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="password" class="col-sm-3 control-label">Password</form:label>
            <div class="col-sm-9">
                <form:input type="password" path="password"  placeholder="Password" cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="birthDate" cssClass="col-sm-3 control-label">Date of Birth</form:label>
            <div class="col-sm-9">
                <form:input path="birthDate" placeholder="dd.mm.yyyy." cssClass="form-control" />
            </div>
        </div>
        <div class="form-group">
            <form:label path="country" cssClass="col-sm-3 control-label">Country</form:label>
            <div class="col-sm-9">
                <form:select path="country" cssClass="form-control">
                    <form:option value="Afghanistan">Afghanistan</form:option>
                    <form:option value="Bahamas">Bahamas</form:option>
                    <form:option value="Cambodia">Cambodia</form:option>
                    <form:option value="Denmark">Denmark</form:option>
                    <form:option value="Ecuador">Ecuador</form:option>
                    <form:option value="Fiji">Fiji</form:option>
                    <form:option value="Gabon">Gabon</form:option>
                    <form:option value="Haiti">Haiti</form:option>
                    <form:option value="Serbia">Serbia</form:option>
                </form:select>
            </div>
        </div>
        <div class="form-group">
            <form:label path="gender" cssClass="control-label col-sm-3">Gender</form:label>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-4">
                        <form:label path="gender" cssClass="radio-inline">
                            <form:radiobutton path="gender" value="Male"/>Male
                        </form:label>
                    </div>
                    <div class="col-sm-4">
                        <form:label path="gender" cssClass="radio-inline">
                            <form:radiobutton path="gender" value="Female"/>Female
                        </form:label>
                    </div>
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </div>
    </form:form>
</div>
</body>
</html>
