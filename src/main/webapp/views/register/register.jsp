<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <jsp:include page="../common/meta.jsp" />
    <title>Cookbook | Register</title>
    <jsp:include page="../common/styles.jsp" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/css/bootstrap-select.min.css">
    <link href="../../resources/styles/register/register.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-sm-8 col-sm-offset-2">
            <div class="register-form">
                <form:form method="post" action="/register" modelAttribute="user">
                    <div class="tab">
                        <h1 style="margin-top: 0;">Profile Info</h1><hr>
                        <div class="form-group">
                            <form:label path="username" cssClass="control-label">Username</form:label>
                            <form:input path="username" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="password" class="control-label">Password</form:label>
                            <form:input type="password" path="password" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="firstName" cssClass="control-label">First Name</form:label>
                            <form:input path="firstName" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="lastName" cssClass="control-label">Last Name</form:label>
                            <form:input path="lastName" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="email" cssClass="control-label">Email</form:label>
                            <form:input path="email" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="birthday" cssClass="control-label">Date of Birth</form:label>
                            <form:input path="birthday" placeholder="MM/DD/YYYY" cssClass="form-control" />
                        </div>
                        <div class="form-group">
                            <form:label path="gender" cssClass="control-label">Gender</form:label><br>
                            <form:label path="gender" cssClass="radio-inline">
                                <form:radiobutton path="gender" value="Male" />Male
                            </form:label>
                            <form:label path="gender" cssClass="radio-inline">
                                <form:radiobutton path="gender" value="Female" />Female
                            </form:label>
                        </div>
                        <div class="form-group">
                            <form:label path="country" cssClass="control-label">Country</form:label>
                            <form:select path="country" cssClass="form-control">
                                <form:option value="" />
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
                        <div class="form-group">
                            <form:label path="overview" cssClass="control-label">Overview</form:label>
                            <form:textarea path="overview" rows="10" maxlength="150" cssClass="form-control" />
                        </div>
                    </div>
                    <div class="tab">
                        <h1 style="margin-top: 0;">Info Questions</h1><hr>
                        <div class="form-group">
                            <h3>Do you eat meat?</h3>
                            <form:checkbox path="meat" data-group-cls="btn-group-lg" />
                        </div>
                        <div class="form-group">
                            <h3>Do you like chicken?</h3>
                            <form:checkbox path="chicken" data-group-cls="btn-group-lg" />
                        </div>
                        <div class="form-group">
                            <h3>Do you like fish?</h3>
                            <form:checkbox path="fish" data-group-cls="btn-group-lg" />
                        </div>
                        <div class="form-group">
                            <h3>Do you like spicy food?</h3>
                            <form:checkbox path="spicy" data-group-cls="btn-group-lg" />
                        </div>
                        <div class="form-group">
                            <h3>Do you like sweets?</h3>
                            <form:checkbox path="sweets" data-group-cls="btn-group-lg" />
                        </div>
                    </div>
                    <div class="tab">
                        <h1 style="margin-top: 0;">Select Allergens</h1><hr>
                        <div class="form-group">
                            <form:select path="allergens" cssClass="selectpicker" data-width="100%" data-live-search="true" multiple="true">
                                <form:options items="${allIngredients}" itemValue="id" itemLabel="name" />
                            </form:select>
                        </div>
                    </div>
                    <div class="tab">
                        <h1 style="margin-top: 0;">Rate Recipes</h1><hr>
                        <div class="row">
                            <c:forEach items="${recipes}" var="recipe">
                                <div class="col-sm-4">
                                    <div class="thumbnail">
                                        <img src="../../resources/images/recipes/${recipe.photo == null ? 'recipe-blank.png' : recipe.photo}">
                                        <div class="caption">
                                            <h4>${recipe.name}</h4>
                                            <p>${recipe.description}</p>
                                        </div>
                                        <div class="rating text-center">
                                            <form:label path="ratings">
                                                <form:radiobutton path="ratings" value="5" />
                                            </form:label>
                                            <form:label path="ratings">
                                                <form:radiobutton path="ratings" value="4" />
                                            </form:label>
                                            <form:label path="ratings">
                                                <form:radiobutton path="ratings" value="3" />
                                            </form:label>
                                            <form:label path="ratings">
                                                <form:radiobutton path="ratings" value="2" />
                                            </form:label>
                                            <form:label path="ratings">
                                                <form:radiobutton path="ratings" value="1" />
                                            </form:label>
                                        </div>
                                    </div>
                                </div>
                            </c:forEach>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <button type="button" class="btn btn-default btn-lg btn-next pull-right">Next</button>
                            <button type="button" class="btn btn-default btn-lg btn-prev pull-right" style="margin-right: 10px;">Previous</button>
                        </div>
                    </div>
                    <div class="row text-center">
                        <span class="step"></span>
                        <span class="step"></span>
                        <span class="step"></span>
                        <span class="step"></span>
                    </div>
                </form:form>
            </div>
        </div>
    </div>
</div>
<jsp:include page="../common/scripts.jsp" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-select/1.12.4/js/bootstrap-select.min.js"></script>
<script src="../../resources/scripts/common/bootstrap-checkbox.min.js" defer></script>
<script src="../../resources/scripts/register/register.js" defer></script>
</body>
</html>
