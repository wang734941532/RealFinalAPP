<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../head_query.jsp" %>
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

  				<c:forEach items="${infoList }" var="info" varStatus="i">
  				    
  				<div class="col-md-4 col-sm-4 col-xs-12 profile_details">
                        <div class="well profile_view">
                          <div class="col-sm-12">
                            <h4 class="brief"><i>${info.apkname }</i></h4>
                            <div class="left col-xs-7">
                              <h2>${info.softwarename }</h2>
                              <c:set var="so1" value="${info.categorylevel1 }" scope="session"></c:set>
                              <c:set var="so2" value="${info.categorylevel2 }" scope="session"></c:set>
                              <c:set var="so3" value="${info.categorylevel3 }" scope="session"></c:set>
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
                                <li><i class="fa "></i> Platform:${info.flatformid } </li>
                                <li><i class="fa "></i> Size: ${info.softwaresize }M</li>
                                <li><i class="fa "></i> Downloads:${info.downloads } </li>
                              </ul>
                            </div>
                            <div class="right col-xs-5 text-center">
                              <img src="${info.logopicpath }" alt="" class="img-circle img-responsive">
                            </div>
                          </div>
                          <div class="col-xs-12 bottom text-center">
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <p class="ratings">
                                <a>版本号:${info.version.versionno }</a>
                                <span></span>
                              </p>
                            </div>
                            <div class="col-xs-12 col-sm-6 emphasis">
                              <button type="button" class="btn btn-success btn-xs">
                                			 <i class="fa fa-android"> </i> 	待审核</button>
                                			 
                 <div class="btn-group">
                      <button type="button" class="btn btn-danger"><a href="${pageContext.request.contextPath }/manager/v_display?id=${info.id}"><strong>审核</strong></a></button>
                      
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