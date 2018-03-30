<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="cn.app.service.VersionServiceImpl"%>
<%@page import="cn.app.service.VersionService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
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
    
   
   
   <script type="text/javascript">
   
   $(function(){
	   //隐藏表格
	   $(".hideTable").hide();
	   //APP状态
	  /*  $("#app_state").click(function(){ */
		 //  alert("come into");
		    $.ajax({
				url:"${pageContext.request.contextPath}/status",
				type:"GET",
				success:function(data){
					if(data!=null){
						
						//alert("result");
						//$("#app_state").removeChild();
						$("#app_state").find("option").remove();
						console.log(data[1]);
						 for(var i = 0; i<data.length; i++){
							var $opt = $("<option></option>").html(data[i].valuename)
															 .attr("value",data[i].id);
							
							$("#app_state").append($opt);
						} 
						//window.location.href="${pageContext.request.contextPath}/manager/validate";
					}
				}
			/* })  */
			/*  var txt1="<p>文本。</p>"; 
			 var $opt = $("<option></option>").html("22222222")
			 .attr("value",222);
		   $("#app_state").append($opt); */
		   
	   });
	   
	   
	   //APP平台
	  /*  $("#platform").click(function(){ */
			 //  alert("come into");
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
																 .attr("value",data[i].id);
								
								$("#platform").append($opt);
							} 
						}
					}
				}) 
			   
		/*    });
	    */
		   //一级分类
	   
	 /*   $("#sort1").click(function(){ */
			 
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
			   
	/* 	   }); */
		   
		   
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
		   
	 			//三级分类
	 			
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
	  
   });
   
   
   
   </script>
   
   
</head>
 <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col">
          <div class="left_col scroll-view">
            <div class="navbar nav_title" style="border: 0;">
              <a href="index.html" class="site_title"><i class="fa fa-paw"></i> <span>APP BMS</span></a>
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
                <h3>   ${userName }</h3>
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
          <div class="">
            <div class="page-title">
              <div class="title_left">
                <h3>APP信息管理维护</h3>
              </div>

              <div class="title_right">
               
              </div>
            </div>

            <div class="clearfix"></div>

            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
                  <div class="x_content">
                    <div class="row">
                      <div class="col-md-12 col-sm-12 col-xs-12 text-center">
                      	 <form action="${pageContext.request.contextPath }/query" name="b_search" id="b_search" method="post"> 
             软件名称<input type="text"  id="softName" style="border: 2px solid black; border-radius: 5px;"/> &nbsp; &nbsp; 
             
     				APP状态<select name="app_state" id="app_state" style="border: 2px solid black;  border-radius: 5px;width: 180px;height: 26px;">
     						
     				</select>&nbsp; &nbsp; 
     				
            所属平台<select name="platform" id="platform" style="border: 2px solid black;  border-radius: 5px;width: 180px;height: 26px;">
     					
     				</select>&nbsp; &nbsp; 
     				
         		一级分类<select name="sort1" id="sort1" style="border: 2px solid black;  border-radius: 5px;width: 180px;height: 26px;">
     						<option>--请选择--</option>
     					 <option>--请选择--</option>
     				</select>&nbsp; &nbsp; 
     				
     				
    				二级分类<select name="sort2" id="sort2" style="border: 2px solid black;  border-radius: 5px;width: 180px;height: 26px;">
     						<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     				</select>&nbsp; &nbsp; 
     				
     				
   					  三级分类<select name="sort3" id="sort3" style="border: 2px solid black;  border-radius: 5px;width: 180px;height: 26px;">
     						<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     					<option>--请选择--</option>
     				</select>&nbsp; &nbsp;
     				
            <input type="submit" id="submit"  value="查询"  class="btn btn-sm btn-success"/>
                      		
                    	</form> 
                      <br/>
                      <br/>
                      </div>

                      <div class="clearfix"></div>
                      
                      
                      
                      <!--展示待审核数据  -->

  				<c:forEach items="${queryList }" var="query" varStatus="i">
  				    
  				<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>${query.apkname }</i></h4>
                            <div class="left col-xs-7">
                              <h2>${query.softwarename }</h2>
                              <c:set var="so1" value="${query.categorylevel1 }" scope="session"></c:set>
                              <c:set var="so2" value="${query.categorylevel2 }" scope="session"></c:set>
                              <c:set var="so3" value="${query.categorylevel3 }" scope="session"></c:set>
                              <% 
                              Map map = (HashMap)session.getAttribute("map");
                               Object a = session.getAttribute("so1");
                               Object b = session.getAttribute("so2");
                               Object c = session.getAttribute("so3");
                               	Object s1 =  map.get(a);
                            	Object s2 =  map.get(b);
                            	Object s3 =  map.get(c);
                              %>
                              <p><strong>level: </strong> <%=s1%>/ <%=s2%> /<%=s3 %>   </p>
                              <ul class="list-unstyled">
                                <li><i class="fa "></i> Platform:${query.flatformid } </li>
                                <li><i class="fa "></i> Size: ${query.softwaresize }M</li>
                                <li><i class="fa "></i> Downloads:${query.downloads } </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                              <img src="${query.logopicpath }" alt="" class="img-circle img-responsive">
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <p class="ratings">
                                <a>版本号:${query.version.versionno }</a>
                                <span></span>
                              </p>
                            </div>
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <button type="button" class="btn btn-success btn-xs">
                                			 <i class="fa fa-android"> </i> 	待审核</button>
                                			 
                 <div class="btn-group">
                      <button type="button" class="btn btn-danger"><a href="${pageContext.request.contextPath }/manager/v_display?id=${query.id}"><strong>审核</strong></a></button>
                      
                    </div>
                              
                            </div>
                          </div>
                        </div>
                      </div>
  				
  				</c:forEach>
  				
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
       <p align="right"> 当前页数:[${now_page }/${ totalPages}]&nbsp; 
       
       <c:if test="${now_page <= totalPages}">
       
       <a href="${pageContext.request.contextPath }/manager/page?p=${now_page+1}">下一页</a>
       
       </c:if>
       
        <c:if test="${now_page >1}">
       
       <a href="${pageContext.request.contextPath }/manager/page?p=${now_page-1}">上一页</a>
       
       </c:if>
        <a href="${pageContext.request.contextPath }/manager/page?p=${totalPages}">末页</a> </p>
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