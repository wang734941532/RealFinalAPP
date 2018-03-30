<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
     
    
    
<%@ include file="../head_query.jsp" %>

<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">

    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
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
                <h2>${userName }</h2>
              </div>
            </div>
            <!-- /menu profile quick info -->

            <br />

            <!-- sidebar menu -->
         <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <h3>  ${userCode } </h3>
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
                      <li><a href="${pageContext.request.contextPath }/dev/maintenance">APP维护</a></li>
                     
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
                    <img src="images/img.jpg" alt="">${userName }
                    <span class=" fa fa-angle-down"></span>
                  </a>
                  <ul class="dropdown-menu dropdown-usermenu pull-right">
                   
                    <li><a href="${pageContext.request.contextPath }/login-developer "><i class="fa fa-sign-out pull-right"></i> Log Out</a></li>
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
            </div>

            <div class="clearfix"></div>


            <div class="row">
              <div class="col-md-12">
                <div class="x_panel">
	          	<div class="x_title">
					<a class="btn btn-success " href="">新增APP基础信息</a>
					<ul class="nav navbar-right panel_toolbox">
						<li>
							<a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
						</li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false"><i class="fa fa-wrench"></i></a>
							<ul class="dropdown-menu" role="menu">
								
							</ul>
						</li>
						<li>
							<a class="close-link"><i class="fa fa-close"></i></a>
						</li>
					</ul>
					<div class="clearfix"></div>
				</div>
				<!-- x_content start	 -->			
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
			<!-- content_table -->
			
                      <table class="table table-striped">
												<thead>
													<tr>
														<th>软件名称/th>
															<th>APK名称</th>
															<th>软件大小(单位:M)</th>
															<th>所属平台</th>
															<th>所属分类(一级分类、二级分类、三级分类)</th>
															<th>状态</th>
															<th>下载次数</th>
															<th>操作</th>
													</tr>
												</thead>
													
                       		  <c:set var="so1" value="${info.categorylevel1 }" scope="session"></c:set>
                              <c:set var="so2" value="${info.categorylevel2 }" scope="session"></c:set>
                              <c:set var="so3" value="${info.categorylevel3 }" scope="session"></c:set>
                              
                              <c:set var="so4" value="${info.flatformid }"  scope="session"></c:set>
                      			
                            <c:set var="so5" value="${info.status }"  scope="session"></c:set>
											
											<!--               ------ -->
								 <% 
                              Map map = (HashMap)session.getAttribute("map");
                              
                              Map dicMap = (HashMap)session.getAttribute("dicMap");
                              
                              Object a = session.getAttribute("so1");
                               Object b = session.getAttribute("so2");
                               Object c = session.getAttribute("so3");
                           	  Object d = (Object)session.getAttribute("so4");
                           	 Object e = (Object)session.getAttribute("so5");
                           		
                               	Object s1 =  map.get(a);
                            	Object s2 =  map.get(b);
                            	Object s3 =  map.get(c);
                            	
                            	Object s4 =  (Object)dicMap.get(d);
                            	Object s5 =  (Object)map.get(e);
                              %>			
											
											<c:forEach items="${infoList }" var="info" varStatus="i">
											
													<tr>
														<td>${info.softwarename }</td>
														<td>${info.apkname }</td>
														<td>$   {info.softwaresize }</td>
														<td>手机</td>
														<td><%=s1 %>--><%=s2 %>--><%=s3 %></td>
														<td><%=s4 %></td>
														<td>${info.downloads }</td>
														<td>
															<!-- Split button -->
															<div class="btn-group">
																<button type="button" class="btn btn-danger">操作</button>
																<button type="button" class="btn btn-danger dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        										<span class="caret"></span>
                        							<span class="sr-only">Toggle Dropdown</span>
                      									</button>
																<ul class="dropdown-menu" role="menu">
																	<li>
																		<a href="#">上架</a>
																	</li>
																	<li>
																		<a href="#">下架</a>
																	</li>
																	<li>
																		<a href="#">新增版本</a>
																	</li>
																	<li>
																		<a href="#">修改版本</a>
																	</li>
																	<li>
																		<a href="#">修改</a>
																	</li>
																	<li>
																		<a href="${pageContext.request.contextPath }/dev/look?id=${info.id}">查看</a>
																	</li>
																	</li>
																	<li>
																		<a href="#">删除</a>
																	</li>
																</ul>
															</div>
														</td>
													</tr>
													
													</c:forEach>
													
												</tbody>
											</table>
                      <!-- content_table end -->
                    </div>
                  </div>
                 <!--  x_content end -->
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- /page content -->

        <!-- footer content -->
        <footer>
          <div class="pull-right">
            Welcome Thundersoft<a href="https://colorlib.com">support</a>
          </div>
          <div class="clearfix"></div>
        </footer>
        <!-- /footer content -->
      </div>
    </div>
	<!-- FastClick -->
    <script src="${pageContext.request.contextPath }/statics/js/fastclick.js"></script>
    <!-- NProgress -->
    <script src="${pageContext.request.contextPath }/statics/js/nprogress.js"></script>

    <!-- Custom Theme Scripts -->
    <script src="${pageContext.request.contextPath }/statics/js/custom.min.js"></script>
   
  </body>
</html>