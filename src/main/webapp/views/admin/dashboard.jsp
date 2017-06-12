<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookbook | Dashboard</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link href="../../resources/styles/admin/dashboard.css" rel="stylesheet">
</head>
<body>
<div class="container">
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Cookbook</a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bell" aria-hidden="true"></i> <b class="caret"></b></a>
                <ul class="dropdown-menu alert-dropdown">
                    <li><a href="#">Alert Name <span class="label label-default">Alert Badge</span></a></li>
                    <li><a href="#">Alert Name <span class="label label-primary">Alert Badge</span></a></li>
                    <li><a href="#">Alert Name <span class="label label-success">Alert Badge</span></a></li>
                    <li><a href="#">Alert Name <span class="label label-info">Alert Badge</span></a></li>
                    <li><a href="#">Alert Name <span class="label label-warning">Alert Badge</span></a></li>
                    <li><a href="#">Alert Name <span class="label label-danger">Alert Badge</span></a></li>
                    <li class="divider"></li>
                    <li><a href="#">View All</a></li>
                </ul>
            </li>
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin <b class="caret"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="fa fa-fw fa-user" aria-hidden="true"></i> Profile</a></li>
                    <li><a href="#"><i class="fa fa-fw fa-gear" aria-hidden="true"></i> Settings</a></li>
                    <li class="divider"></li>
                    <li><a href="#"><i class="fa fa-fw fa-power-off" aria-hidden="true"></i> Log Out</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li class="active"><a href="#"><i class="fa fa-fw fa-dashboard" aria-hidden="true"></i> Dashboard</a></li>
                <li><a href="#"><i class="fa fa-fw fa-user" aria-hidden="true"></i> Users</a></li>
                <li><a href="#"><i class="fa fa-fw fa-cutlery" aria-hidden="true"></i> Recipes</a></li>
                <li>
                    <a href="javascript:" data-toggle="collapse" data-target="#demo"><i class="fa fa-fw fa-arrows-v" aria-hidden="true"></i> Dropdown <i class="fa fa-fw fa-caret-down"></i></a>
                    <ul id="demo" class="collapse">
                        <li><a href="#">Dropdown Item</a></li>
                        <li><a href="#">Dropdown Item</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
</div>
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>
