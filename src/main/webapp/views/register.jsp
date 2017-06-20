<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <form class="form-horizontal" role="form">
        <h2>Registration Form</h2>
        <div class="form-group">
            <label for="firstName" class="col-sm-3 control-label">Full Name</label>
            <div class="col-sm-9">
                <input type="text" id="firstName" placeholder="Full Name" class="form-control" autofocus>
            </div>
        </div>
        <div class="form-group">
            <label for="email" class="col-sm-3 control-label">Email</label>
            <div class="col-sm-9">
                <input type="email" id="email" placeholder="Email" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-9">
                <input type="password" id="password" placeholder="Password" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
            <div class="col-sm-9">
                <input type="date" id="birthDate" class="form-control">
            </div>
        </div>
        <div class="form-group">
            <label for="country" class="col-sm-3 control-label">Country</label>
            <div class="col-sm-9">
                <select id="country" class="form-control">
                    <option>Afghanistan</option>
                    <option>Bahamas</option>
                    <option>Cambodia</option>
                    <option>Denmark</option>
                    <option>Ecuador</option>
                    <option>Fiji</option>
                    <option>Gabon</option>
                    <option>Haiti</option>
                    <option>Serbia</option>
                </select>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <label class="control-label col-sm-3">Gender</label>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <input type="radio" name="optradio">Female
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <input type="radio" name="optradio">Male
                        </label>
                    </div>
                </div>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <label class="control-label col-sm-3">Allergens</label>
            <div class="col-sm-9">
                <textarea class="form-control" id="allergens" rows="3" cols="20" placeholder="Put each allergen on its own line."></textarea>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">I accept <a href="#">terms</a>
                    </label>
                </div>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </div>
    </form> <!-- /form -->
</div> <!-- ./container -->
</body>
</html>
