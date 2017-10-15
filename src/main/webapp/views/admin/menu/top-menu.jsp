<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="${pageContext.request.contextPath}/admin/dashboard" class="navbar-brand">Cookbook</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
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
                <li><a href="#">Settings</a></li>
                <li><a href="#">Profile</a></li>
            </ul>
            <form class="navbar-form navbar-right">
                <input type="text" class="form-control" placeholder="Search...">
            </form>
        </div>
    </div>
</nav>
