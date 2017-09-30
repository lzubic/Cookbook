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
            <form:label path="birthday" cssClass="col-sm-3 control-label">Date of Birth</form:label>
            <div class="col-sm-9">
                <form:input path="birthday" placeholder="MM/DD/YYYY" cssClass="form-control" />
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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="../resources/scripts/common/bootstrap-checkbox.min.js" defer></script>
<script src="../resources/scripts/register.js" defer></script>
</body>
</html>
