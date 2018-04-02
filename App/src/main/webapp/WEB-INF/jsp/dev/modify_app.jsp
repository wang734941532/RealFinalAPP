<%@page import="java.io.Console"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
			$("#logo").hide()
			
			
			
			$("#status").focus(function(){
				//状态
				 $.ajax({
						url:"${pageContext.request.contextPath}/status",
						type:"GET",
						success:function(data){
							if(data!=null){
								
								//alert("result");
								//$("#app_state").removeChild();
								$("#status").find("option").remove();
								console.log(data[1]);
								 for(var i = 0; i<data.length; i++){
									var $opt = $("<option></option>").html(data[i].valuename)
																	 .attr("value",data[i].valueid);
									
									$("#status").append($opt);
								} 
							}
						}
			   });
				
				
				
			});
			
			$("#platform").focus(function(){
				
				
				//平台
				 $.ajax({
						url:"${pageContext.request.contextPath}/flatform",
						type:"GET",
						success:function(data){
							if(data!=null){
								
								//alert("result");
								//$("#app_state").removeChild();
								$("#platform").find("option").remove();
								console.log(data[1]);
								 for(var i = 0; i<data.length; i++){
									var $opt = $("<option></option>").html(data[i].valuename)
																	 .attr("value",data[i].valueid);
									
									$("#platform").append($opt);
								} 
							}
						}
					}) 
				
				
				
			});
			
			
			
				//分类1
				$("#sort1").focus(function(){
					
					
					 $.ajax({
							url:"${pageContext.request.contextPath}/levelOne",
							type:"GET",
							success:function(data){
								if(data!=null){
									$("#sort1").find("option").remove();
									console.log(data[1]);
									 for(var i = 0; i<data.length; i++){
										var $opt = $("<option></option>").html(data[i].categoryname)
																		 .attr("value",data[i].id);
										/*  if(i == 0){
											$opt.attr("selected",true);
										}  */
										$("#sort1").append($opt);
									} 
								}
							}
						}) 
					
				});
				
				
			
					
					
					   //二级分类
				    $("#sort1").change(function(){ 
					   var options=$("#sort1 option:selected").val(); 
					   console.log(options);
						 //  alert("come into");
						    $.ajax({
								url:"${pageContext.request.contextPath}/sort2?sort1option="+options,
								type:"GET",
								success:function(data){
									if(data!=null){
										
										//alert("result");
										//$("#app_state").removeChild();
										$("#sort2").find("option").remove();
										console.log(data[1]);
										 for(var i = 0; i<data.length; i++){
											var $opt = $("<option></option>").html(data[i].categoryname)
																			 .attr("value",data[i].id);
											
											$("#sort2").append($opt);
										} 
									}
								}
							}) 
						   
					    }); 
	    	 
					
			
				
		  	   $("#sort2").change(function(){
		  		   var options=$("#sort2 option:selected").val(); 
		  		   console.log(options);
		  			 //  alert("come into");
		  			    $.ajax({
		  					url:"${pageContext.request.contextPath}/sort3?sort2option="+options,
		  					type:"GET",
		  					success:function(data){
		  						if(data!=null){
		  							
		  							//alert("result");
		  							//$("#app_state").removeChild();
		  							$("#sort3").find("option").remove();
		  							console.log(data[1]);
		  							 for(var i = 0; i<data.length; i++){
		  								var $opt = $("<option></option>").html(data[i].categoryname)
		  																 .attr("value",data[i].id);
		  								 
		  								$("#sort3").append($opt);
		  							} 
		  						}
		  					}
		  				}) 
		  			   
		  		   });
		  	   
		  	   
		  	   $(".picture").click(function(){
		  		
  				$("#logo").show();		  		   
		  		   
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
              			<h2> 修改APP信息  <i class="fa fa-user"></i> <span>系统管理员</span></h2>
              			<div class="clearfix"></div>
              		</div><!--题目1title end-->
              		<div class="x_title"><!--题目2title-->
              			<h2>APP基础信息</h2>
              			<div class="clearfix"></div>
              		</div><!--题目2title  end-->
              		<div class="x_content"><!--APP基础信息内容content-->
                    <br />
                    <form id="demo-form2" data-parsley-validate  class="form-horizontal form-label-left" method="post" enctype="multipart/form-data" action="${pageContext.request.contextPath }/dev/realModifyApp" >

                      <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12" for="Sname">软件名称<span class="required">*</span>
                        </label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input type="text" id="Sname"  value="${info.softwarename }" class="form-control col-md-7 col-xs-12" name="Sname">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="Aname" class="control-label col-md-3 col-sm-3 col-xs-12">APK名称<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="Aname" class="form-control col-md-7 col-xs-12" type="text" value="${info.apkname }" name="Aname">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="rom" class="control-label col-md-3 col-sm-3 col-xs-12">支持rom<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="rom" class="form-control col-md-7 col-xs-12" type="text" value="${info.supportrom }" name="rom">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="gui" class="control-label col-md-3 col-sm-3 col-xs-12">界面语言<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="gui" class="form-control col-md-7 col-xs-12"  value="${info.interfacelanguage }"  type="text" name="gui">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="size" class="control-label col-md-3 col-sm-3 col-xs-12">软件大小<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="size" class="form-control col-md-7 col-xs-12" type="text" value="${info.softwaresize }"   name="size">
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="count" class="control-label col-md-3 col-sm-3 col-xs-12">下载次数<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                          <input id="count" class="form-control col-md-7 col-xs-12" value="${info.downloads }"  type="text" name="count">
                        </div>
                      </div>
              
                      			
                      			
                       		  <c:set var="so1" value="${info.categorylevel1 }" scope="session"></c:set>
                              <c:set var="so2" value="${info.categorylevel2 }" scope="session"></c:set>
                              <c:set var="so3" value="${info.categorylevel3 }" scope="session"></c:set>
                              
                              <c:set var="so4" value="${info.status }"  scope="session"></c:set>
							 <c:set var="so5" value="${info.flatformid +10 }"  scope="session"></c:set>
					 		<c:set var="so6" value="${version.publishstatus + 13 }"  scope="session"></c:set>
                              <% 
                              Map map = (HashMap)session.getAttribute("map");
                              Map dicMap = (HashMap)session.getAttribute("dicMap");
                              Map plamap = (HashMap)session.getAttribute("plaMap");
                              Map pubMap = (HashMap)session.getAttribute("pubMap");
                              
                               Object a = session.getAttribute("so1");
                               Object b = session.getAttribute("so2");
                               Object c = session.getAttribute("so3");
                               Object d = session.getAttribute("so4");
                               Object e = session.getAttribute("so5");
                               Object f = session.getAttribute("so6");
                               
                               	Object s1 =  map.get(a);
                            	Object s2 =  map.get(b);
                            	Object s3 =  map.get(c);
                            	Object s4 =  dicMap.get(d);
                           		Object s5 =  plamap.get(e);
                           		Object s6 =  pubMap.get(f);
                              %>
                              
                      <div class="form-group">
                        <label for="platform" class="control-label col-md-3 col-sm-3 col-xs-12">所属平台<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                         <select id="platform" name="platform" data-validate-length="6,8" class="form-control col-md-7 col-xs-12">
                        			<option selected value="${info.flatformid }"><%=s5 %></option>
                        		  
                        	</select>
                        </div>
                      </div>
                      
                     <div class="item form-group">
                        <label for="sort1" class="control-label col-md-3 col-sm-3 col-xs-12">一级分类</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        		<select id="sort1" name="sort1" data-validate-length="6,8" class="form-control col-md-7 col-xs-12">
                        			<option selected value="${info.categorylevel1 }"><%=s1 %></option>
                        		  
                        	</select>
                        </div>
                      </div>
                      
                        <div class="item form-group">
                        <label for="sort2" class="control-label col-md-3 col-sm-3 col-xs-12">二级分类</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        		<select id="sort2" name="sort2" data-validate-length="6,8" class="form-control col-md-7 col-xs-12">
                        		<option selected value="${info.categorylevel2 }"><%=s2 %></option>
                        	</select>
                        </div>
                      </div>
                      
                      
                       <div class="item form-group">
                        <label for="sort3" class="control-label col-md-3 col-sm-3 col-xs-12">三级分类</label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        		<select id="sort3" name="sort3" data-validate-length="6,8" class="form-control col-md-7 col-xs-12">
                        			<option selected value="${info.categorylevel3 }"><%=s3 %></option>
                        	</select>
                        </div>
                      </div>
                      
                      <div class="form-group">
                        <label for="status" class="control-label col-md-3 col-sm-3 col-xs-12">APP状态<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        		<select id="status" name="status" data-validate-length="6,8" class="form-control col-md-7 col-xs-12">
                        			<option selected value="${info.status }"><%=s4 %></option>
                        	</select>
                        </div>
                      </div>
                      <div class="form-group">
                        <label for="desc" class="control-label col-md-3 col-sm-3 col-xs-12">应用简介<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<textarea  class="form-control" rows="3" placeholder="简介" name="desc" id="desc">${info.appinfo }</textarea>
                        </div>
                      </div>
                         <div class="form-group">
                        <label for="logopic" class="control-label col-md-3 col-sm-3 col-xs-12">LOGO图片<span class="required">*</span></label>
                        <div class="col-md-6 col-sm-6 col-xs-12">
                        	<img src="${info.logopicpath }"  class="picture" style="width:60px;height:60px"/>
                        	<input type="file" id="logo" name="logo" data-validate-length-range="8,20" class="form-control col-md-7 col-xs-12">
                        </div>
                      </div>
                   
                      <div class="form-group">
                     
					<div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
				<button type="submit" class="btn btn-success ">修改</button>
					<input type="hidden" name="id" value="${info.id }" class="passornot">
				<button type="submit" class="btn btn-success"><a href="${pageContext.request.contextPath }/dev/maintenance">返回</a></button>
												</div>
											</div>
                    
                    </form>
                  </div>
                  <!--APP基础信息内容content end-->
              		
              		
              		
                  <div class="x_title"><!--题目3title-->
                    
                  </div><!--题目3title end-->
                  <div class="x_content"><!--最新版本信息内容content-->
                   
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