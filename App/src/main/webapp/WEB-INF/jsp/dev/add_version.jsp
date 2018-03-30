<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
 
    <title>APP后台管理系统</title>
    
    <link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
    <style type="text/css">
    
    </style>
    
</head>
 <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>Gentellela Alela!</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>John Doe</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>  测试账户001 </h3>
                <ul class="nav side-menu">
                	
                  <li><a><i class="fa fa-home"></i> APP帐户管理 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                    </ul>
                  </li>
                  
                  
                  <li><a><i class="fa fa-edit"></i>APP应用管理<span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/manager/validate">APP审核</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">广告推广 </a></li>
                     
                    </ul>
                  </li>
                  
                  <li><a><i class="fa fa-desktop"></i>基础数据维护 <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      <li><a href="${pageContext.request.contextPath }/error">暂无功能</a></li>
                      
                    </ul>
                  </li>
                  
                </ul>
              </div>
           

            </div>
            <!-- /sidebar menu -->

            <!-- /menu footer buttons -->
            <div class="sidebar-footer hidden-small">
              <a data-toggle="tooltip" data-placement="top" title="Settings">
                <span class="glyphicon glyphicon-cog" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="FullScreen">
                <span class="glyphicon glyphicon-fullscreen" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Lock">
                <span class="glyphicon glyphicon-eye-close" aria-hidden="true"></span>
              </a>
              <a data-toggle="tooltip" data-placement="top" title="Logout">
                <span class="glyphicon glyphicon-off" aria-hidden="true"></span>
              </a>
            </div>
            <!-- /menu footer buttons -->
          </div>
        </div>

        <!-- top navigation -->
       <div class="top_nav">
          <div class="nav_menu">
            <nav>
              <div class="nav toggle">
                <a id="menu_toggle"><i class="fa fa-bars"></i></a>
              </div>

              <ul class="nav navbar-nav navbar-right">
                <li class="">
                  <a href="javascript:;" class="user-profile dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                    <img src="images/img.jpg" alt="">John Doe
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                   
                    <li><a href="login.html"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
                  </ul>
                </li>

                <li role="presentation" class="dropdown">
                 
                </li>
              </ul>
            </nav>
          </div>
        </div>
        <!-- /top navigation -->


       <!-- page content -->
        <div class="right_col" role="main">
            <div class="clearfix"></div>
         <!-- fenjie-->
            <div class="row">
              <div class="col-md-12 col-sm-12 col-xs-12">
              	
              	
                <div class="x_panel"><!--??面板-->
                	
                	<div class="x_title"><!--题目1title-->
              			<h2> 新增最新版本信息  <i class="fa fa-user"></i> <span>测试账号001</span></h2>
              			<div class="clearfix"></div>
              		</div><!--题目1title end-->
              		<div class="x_title"><!--题目2title-->
              			<h2>历史版本列表</h2>
              			<div class="clearfix"></div>
              		</div><!--题目2title  end-->
              		
              		<div class="x_content"><!--历史版本列表-->
              			
              			<table class="table table-striped table-bordered">
                      <thead>
                        <tr>
                          <th>软件名称</th>
                          <th>版本号</th>
                          <th>版本大小(单位:M)</th>
                          <th>发布状态</th>
                          <th>APK文件下载</th>
                          <th>最新更新时间</th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr>
                          <td>Mark</td>
                          <td>Mark</td>
                          <td>Mark</td>
                          <td>Mark</td>
                          <td>Mark</td>
                          <td>
                          </td>
                        </tr>
                        <tr>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>@fat</td>
                          <td>Jacob</td>
                          <td>Thornton</td>
                          <td>@fat</td>
                        </tr>
                        <tr>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td>@twitter</td>
                          <td>Larry</td>
                          <td>the Bird</td>
                          <td>@twitter</td>
                          
                        </tr>
                      </tbody>
                    </table>
              		</div><!--历史版本列表 end-->
                  <div class="x_title"><!--题目3title-->
                    <h2> 新增最新版本信息 </h2>
                    <!--右边三个图标的HTML-->
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <!--右边三个图标的HTMLend-->
                    <div class="clearfix"></div><!--bootstrap水平线？-->
                  </div><!--题目3title end-->
                  
                  <div class="x_content"><!--内容content-->
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="版本号">版本号<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="版本号" required="required" class="form-control col-md-7 col-xs-12" name="版本号">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="版本大小">版本大小 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="版本大小" name="版本大小" required="required" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="发布状态" class="control-label col-md-3 col-sm-3 col-xs-12">发布状态<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="发布状态" class="form-control col-md-7 col-xs-12" type="text" name="发布状态">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="版本简介" class="control-label col-md-3 col-sm-3 col-xs-12">版本简介<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea  class="form-control" rows="3" placeholder="简介"></textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apk文件" class="control-label col-md-3 col-sm-3 col-xs-12">apk文件<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="apkName" class="form-control col-md-7 col-xs-12" type="file" name="apkName">
                        </div>
                      </div>
                      <div class="ln_solid"></div>
                      <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                          <button type="submit" class="btn btn-primary">保存</button>
                          <button type="submit" class="btn btn-success">返回</button>
                        </div>
                      </div>

                    </form>
                  </div>
                  <!--内容content end-->
                </div><!--??面板end-->
                
              </div>
            </div><!--row和栅格end-->
<!--fenjie-->
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
           welcome Thundersoft <a href="https://www.baidu.com"> support</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>

    <!-- jQuery -->
    <script src="${pageContext.request.contextPath }/statics/js/jquery.min.js"></script>
    <!-- Bootstrap -->
    <script src="${pageContext.request.contextPath }/statics/js/bootstrap.min.js"></script>
    <!-- FastClick -->
    <script src="${pageContext.request.contextPath }/statics/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath }/statics/js/nprogress.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath }/statics/js/custom.min.js"></script>
  </body>
</html>