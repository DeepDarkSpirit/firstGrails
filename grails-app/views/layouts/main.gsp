<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title>中国工程院选举系统</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1, user-scalable=no">
        <!-- Bootstrap 3.3.6 -->
        <link rel="stylesheet" href="${resource(dir: 'bootstrap/css', file: 'bootstrap.min.css')}" type="text/css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
        <!-- Theme style -->
        <link rel="stylesheet" href="${resource(dir: 'dist/css', file: 'AdminLTE.min.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'dist/css/skins', file: '_all-skins.min.css')}" type="text/css">

        <link rel="stylesheet" href="${resource(dir: 'plugins/jquery-easyui-1.3.6/themes/default', file: 'easyui.css')}" type="text/css">

        <!-- jQuery 2.2.0 -->
        <script src="${resource(dir: 'plugins/jQuery', file: 'jQuery-2.2.0.min.js')}"></script>
        <!-- jQuery UI 1.11.4 -->
        <script src="${resource(dir: 'plugins/jQuery', file: 'jquery-ui.min.js')}"></script>
        <!-- Bootstrap 3.3.6 -->
        <script src="${resource(dir: 'bootstrap/js', file: 'bootstrap.min.js')}"></script>
        <!-- AdminLTE App -->
        <script src="${resource(dir: 'dist/js', file: 'app.min.js')}"></script>

        <script src="${resource(dir: 'plugins/jquery-easyui-1.3.6', file: 'jquery.easyui.min.js')}"></script>

        <script src="${resource(dir: 'plugins/jquery-barcode-2.0.3', file: 'jquery-barcode.js')}"></script>

        <g:layoutHead/>
		<g:javascript library="application"/>
		<r:layoutResources />
	</head>
	<body class="hold-transition skin-blue sidebar-mini">
    <div class="wrapper">
        <header class="main-header">
            <!-- Logo -->
            <a href="${createLink(uri: '/')}" class="logo">
                <!-- logo for regular state and mobile devices -->
                <span class="logo-lg">选举系统</span>
            </a>
            <!-- Header Navbar: style can be found in header.less -->
            <nav class="navbar navbar-static-top">
                <!-- Sidebar toggle button-->
            <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
                <span class="sr-only">Toggle navigation</span>
            </a>

                <div class="navbar-custom-menu">
                    <ul class="nav navbar-nav">
                        <!-- User Account: style can be found in dropdown.less -->
                        <li class="dropdown user user-menu">
                            <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                <img src="${resource(dir: '/dist/img', file: 'avatar5.png')}" class="user-image" alt="User Image"/>
                                <span class="hidden-xs">管理员</span>
                            </a>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>

        <!-- Left side column. contains the logo and sidebar -->
        <aside class="main-sidebar">
            <!-- sidebar: style can be found in sidebar.less -->
            <section class="sidebar">
                <!-- sidebar menu: : style can be found in sidebar.less -->
                <ul class="sidebar-menu">
                    <li class="header">主菜单</li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-dashboard"></i>
                            <span>前置信息</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/firstGrails/candidate/index"><i class="fa fa-circle-o text-red"></i>候选人管理</a></li>
                            <li><a href="/firstGrails/division/index"><i class="fa fa-circle-o text-green"></i>学部信息</a></li>
                            <li><a href="/firstGrails/turnCandidate/index"><i class="fa fa-circle-o text-blue"></i>轮候选人</a></li>
                        </ul>
                    </li>

                    <li class="active treeview">
                        <a href="#">
                            <i class="fa fa-cog"></i> <span>选票设置</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/firstGrails/ballotContent/index"><i class="fa fa-circle-o text-yellow"></i>设置选票</a></li>
                        </ul>
                    </li>

                    <li class="treeview">
                        <a href="#">
                            <i class="fa fa-rocket"></i>
                            <span>院士信息</span>
                            <i class="fa fa-angle-left pull-right"></i>
                        </a>
                        <ul class="treeview-menu">
                            <li><a href="/firstGrails/academician/index"><i class="fa fa-circle-o text-blue"></i>院士信息</a></li>
                        </ul>
                    </li>
                </ul>
            </section>
            <!-- /.sidebar -->
        </aside>

        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <section class="content-header">
                <h1>
                    主界面
                    <small>内容显示区</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="${createLink(uri: '/')}"><i class="fa fa-dashboard"></i> 首页</a></li>
                </ol>
            </section>

            <!-- Main content -->
            <section class="content">
            <g:layoutBody/>
            </section>
            <!-- /.content -->

        </div>
        <!-- /.content-wrapper -->
        <footer class="main-footer">
            <div class="pull-right hidden-xs">
                <b>Version</b> 0.0.1
            </div>
            <strong>Copyright &copy; 2016-2017 <a href="http://weibo.com/yaoguai5">吴俊</a>.</strong> All rights reserved.
        </footer>

    </div>
    <!-- ./wrapper -->

    </body>
</html>
