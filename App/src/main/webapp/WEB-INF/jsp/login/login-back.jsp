<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>APP后台管理系统</title>
 
	<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
  
    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">
	</head>
	<body class="login">
		<div>
			<div class="login_wrapper">
				<section class="login_content">
					<form action="${pageContext.request.contextPath }/login-back" method="post">
						<h1>APP后台管理系统</h1>
						<div>
							<input type="text" class="form-control" placeholder="请输入用户名" required name="userCode" id="userCode"/>
						</div>
						<div>
							<input type="password" class="form-control" placeholder="请输入 密码" required name="userPassword" id="userPassword"/>
						</div>
						<div>
							<input type="submit" name="loginbtn" id="" value="登录" class="btn btn-success btn-lg  submit" />
							<input type="reset" name="resetbtn" id="" value="重置" class="btn btn-default btn-lg  reset" />
						</div>

						<div class="separator">
							<br />
							<div>
								<p>©2018 All Rights Reserved. </p>
							</div>
						</div>
					</form>
				</section>
			</div>
		</div>
	</body>
	
	

</html>