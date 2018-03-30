<%@page import="java.io.Console"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
    
    
<% 
String path = request.getContextPath(); 
String basePath = request.getScheme() + "://" 
+ request.getServerName() + ":" + request.getServerPort() 
+ path + "/";//返回形式http://localhost:8080/upload/ 
%> 
     	<script type="text/javascript">
     	$(function(){
			var p = $(".passornot").val();
			
			$(".ooo").click(function(){
				$.ajax({
					url:"${pageContext.request.contextPath}/verify/"+p,
					type:"GET",
					success:function(result){
						if(result==true){
							alert("审核通过");
							//window.location.href="${pageContext.request.contextPath}/manager/validate";
						}
					}
				})
				
			});
			
			$(".qqq").click(function(){

				$(".ooo").click(function(){
					$.ajax({
						url:"${pageContext.request.contextPath}/verifyNo/"+p,
						type:"GET",
						success:function(result){
							if(result==true){
								alert("审核不通过");
								//window.location.href="${pageContext.request.contextPath}/manager/validate";
							}
						}
					})
					
				});
				
			});
		});
	</script>
</head>
 <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APP BWS</span></a>
            </div>

            <div class="clearfix"></div>

            <!-- menu profile quick info -->
            <div class="profile">
              <div class="profile_pic">
                <img src="${pageContext.request.contextPath }/statics/images/img.jpg" alt="..." class="img-circle profile_img">
              </div>
              <div class="profile_info">
                <span>Welcome,</span>
                <h2>${userCode }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
          <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>  ${userName } </h3>
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
                    <img src="images/img.jpg" alt=""> ${userName }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                   
                    <li><a href="${pageContext.request.contextPath }/login-back"><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
              			<h2> 查看并审核APP信息  <i class="fa fa-user"></i> <span>系统管理员</span></h2>
              			<div class="clearfix"></div>
              		</div><!--题目1title end-->
              		<div class="x_title"><!--题目2title-->
              			<h2>APP基础信息</h2>
              			<div class="clearfix"></div>
              		</div><!--题目2title  end-->
              		<div class="x_content"><!--APP基础信息内容content-->
                    <br />
                    <form id="demo-form2" data-parsley-validate  class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="softName">软件名称<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="softName" readonly="readonly" value="${info.softwarename }" class="form-control col-md-7 col-xs-12" name="softName">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apkName" class="control-label col-md-3 col-sm-3 col-xs-12">APK名称<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="apkName" class="form-control col-md-7 col-xs-12" type="text" value="${info.apkname }" readonly name="apkName">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="ROM" class="control-label col-md-3 col-sm-3 col-xs-12">支持ROM<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="ROM" class="form-control col-md-7 col-xs-12" type="text" value="${info.supportrom }"readonly name="ROM">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="lang" class="control-label col-md-3 col-sm-3 col-xs-12">界面语言<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="lang" class="form-control col-md-7 col-xs-12"  value="${info.interfacelanguage }" readonly type="text" name="lang">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="softSize" class="control-label col-md-3 col-sm-3 col-xs-12">软件大小<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="softSize" class="form-control col-md-7 col-xs-12" type="text" value="${info.softwaresize }" readonly  name="softSize">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="downloads" class="control-label col-md-3 col-sm-3 col-xs-12">下载次数<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="downloads" class="form-control col-md-7 col-xs-12" value="${info.downloads }" readonly  type="text" name="downloads">
                        </div>
                      </div>
                      
                      			
                      			
                       		  <c:set var="so1" value="${info.categorylevel1 }" scope="session"></c:set>
                              <c:set var="so2" value="${info.categorylevel2 }" scope="session"></c:set>
                              <c:set var="so3" value="${info.categorylevel3 }" scope="session"></c:set>
                              
                              <c:set var="so4" value="${info.flatformid }"  scope="session"></c:set>
                      			
                           
                              <% 
                              Map map = (HashMap)session.getAttribute("map");
                              Map dicMap = (HashMap)session.getAttribute("dicMap");
                              
                              
                              
                               Object a = session.getAttribute("so1");
                               Object b = session.getAttribute("so2");
                               Object c = session.getAttribute("so3");
                           	  Object d = (Object)session.getAttribute("so4");
                           		
                               	Object s1 =  map.get(a);
                            	Object s2 =  map.get(b);
                            	Object s3 =  map.get(c);
                            	Object s4 =  (Object)map.get(d);
                              %>
                              
                      <div class="form-group">
                        <label for="platform" class="control-label col-md-3 col-sm-3 col-xs-12">所属平台<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="platform" class="form-control col-md-7 col-xs-12" value="手机" readonly  type="text" name="platform">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="sort">所属分类 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="sort" name="sort" required="required"  value="<%=s1 %>--><%=s2 %>--><%=s3 %>" readonly class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="status" class="control-label col-md-3 col-sm-3 col-xs-12">APP状态<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="status" class="form-control col-md-7 col-xs-12"  value="${info.status } <%=dicMap %>" readonly type="text" name="status">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="desc" class="control-label col-md-3 col-sm-3 col-xs-12">应用简介<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea  class="form-control" rows="3" placeholder="简介" name="desc" id="desc">${info.appinfo }</textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="logo" class="control-label col-md-3 col-sm-3 col-xs-12">LOGO图片<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<img src="${info.logopicpath }" style="width:60px;height:60px"/>
                        </div>
                      </div>
                    
                    </form>
                  </div>
                  <!--APP基础信息内容content end-->
              		  <div class="form-group">
                     
												<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
				<button type="submit" class="btn btn-success ooo" >审核通过</button>
				<input type="hidden" name="no1" value="${info.id }" class="passornot">
				<button type="submit" class="btn btn-success qqq">审核不通过</button>
				<button type="submit" class="btn btn-primary"><a href="${pageContext.request.contextPath }/manager/validate">返回</a></button>
												</div>
											</div>
              		
              		
                  <div class="x_title"><!--题目3title-->
                    <h2> 最新版本信息 </h2>
                    <!--右边三个图标的HTML-->
                    <ul class="nav navbar-right panel_toolbox">
                      <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                      </li>
                    </ul>
                    <!--右边三个图标的HTMLend-->
                    <div class="clearfix"></div><!--bootstrap水平线？-->
                  </div><!--题目3title end-->
                  <div class="x_content"><!--最新版本信息内容content-->
                    <br />
                    <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left">

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="version">版本号<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="version" readonly value="${version.versionno }" class="form-control col-md-7 col-xs-12" name="version">
                        </div>
                      </div>
                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="versionSize">版本大小 <span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="versionSize" name="versionSize" readonly value="${version.versionsize }" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="versionStatus" class="control-label col-md-3 col-sm-3 col-xs-12">发布状态<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="versionStatus" class="form-control col-md-7 col-xs-12" readonly value="${version.publishstatus } <%=dicMap %>"   type="text" name="versionStatus">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="versionDesc" class="control-label col-md-3 col-sm-3 col-xs-12">版本简介<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea  class="form-control" rows="3" id="versionDesc" readonly name="versionDesc" >${version.versioninfo}</textarea>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="apk" class="control-label col-md-3 col-sm-3 col-xs-12">apk文件<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="apk" class="form-control col-md-7 col-xs-12"    readonly value="${version.apkfilename}"  type="text" name="apk">
                        </div>
                      </div>
                      </form>
                    </div><!--最新把版本信息 end-->
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

   
  </body>
</html>