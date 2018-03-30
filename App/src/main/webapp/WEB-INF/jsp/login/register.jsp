<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>APP开发者平台 </title>
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
</head>
<script type="text/javascript">
	$(document).ready(function(){
    $("#submit").click(function(){
        var u=document.getElementById("devCode");
        if(u.validity.valueMissing==true){
            u.setCustomValidity("账号不能为空");
        }
        else if(u.validity.patternMismatch==true){
            u.setCustomValidity("账号必须是6~10位的英文和数字");
        }
        else{
            u.setCustomValidity("");
        }
		
		var devName=document.getElementById("devName");
        if(devName.validity.valueMissing==true){
            devName.setCustomValidity("名称不能为空");
        }
        else if(devName.validity.patternMismatch==true){
            devName.setCustomValidity("名称必须小于10位");
        }
        else{
            devName.setCustomValidity("");
        }
		
        var pwd=document.getElementById("devPassword");
        if(pwd.validity.valueMissing==true){
            pwd.setCustomValidity("密码不能为空");
        }
        else if(pwd.validity.patternMismatch==true){
            pwd.setCustomValidity("密码必须是6~16位的英文和数字");
        }
        else{
            pwd.setCustomValidity("");
        }
		
		var repwd=document.getElementById("predevPassword");
		var pwdval=$("#devPassword").val();
		var repwdval=$("#predevPassword").val();
		if(repwd.validity.valueMissing==true){
            repwd.setCustomValidity("密码不能为空");
        }
        else if(repwdval!=pwdval){
            repwd.setCustomValidity("两次输入密码不一致");
        }else{
            repwd.setCustomValidity("");
        }
		
        var email=document.getElementById("devEmail");
        if(email.validity.valueMissing==true){
            email.setCustomValidity("邮箱不能为空");
        }
        else if(email.validity.typeMismatch==true){
            email.setCustomValidity("邮箱格式不正确");
        }
        else{
            email.setCustomValidity("");
        }
		
    })
})
</script>
<body class="login">
		<div>
			<div class="login_wrapper">
				<section class="login_content">
					
					<form data-parsley-validate class="form-horizontal" action="${pageContext.request.contextPath }/register" method="post">
						<h1>开发者账号注册</h1>
						<div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="devCode">帐号<span class="required">*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <input type="text" id="devCode" required="required" class="form-control col-md-7 col-xs-12" name="devCode" placeholder="英文、数字长度为6-10个字符" pattern="[a-zA-Z0-9]{6,10}"/>
		                    </div>
                        </div>
                        <div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="devName">名称<span class="required">*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <input type="text" id="devName" required="required" class="form-control col-md-7 col-xs-12" name="devName" placeholder="长度小于10个字符" maxlength="10"/>
		                    </div>
                        </div>
                        <div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="devPassword">密码<span class="required">*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <input type="text" id="devPassword" required="required" class="form-control col-md-7 col-xs-12" name="devPassword" placeholder="长度为6-16个字符" pattern="[a-zA-Z0-9]{6,16}"/>
		                    </div>
                        </div>
                        <div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="predevPassword">确认密码<span class="required" >*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <input type="text" id="predevPassword" required="required" class="form-control col-md-7 col-xs-12" name="predevPassword" placeholder="确认密码"/>
		                    </div>
                        </div>
                        <div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="devEmail">电子邮箱<span class="required">*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <input type="email" id="devEmail" required="required" class="form-control col-md-7 col-xs-12" name="devEmail" />
		                    </div>
                        </div>
                        <div class="form-group"> 
		                    <label class="control-label col-md-4 col-sm-4 col-xs-12" for="devInfo">简介<span class="required">*</span>
		                    </label>
		                    <div class="col-md-8 col-sm-8 col-xs-12">
		                      <textarea style="resize: none;overflow: scroll;overflow-x: hidden;" id="devInfo"  name="devInfo" class="form-control" rows="3" placeholder="简介"></textarea>
		                    </div>
                        </div>
						<div class="form-group">
							<div class="col-md-offset-3 submit">
								<input type="submit" name="loginbtn" id="submit" value="提交" class="btn btn-success btn-lg  submit" />
							</div>
							<div >
								<input type="reset" name="resetbtn" id="" value="重置" class="btn btn-default btn-lg  reset" />
							</div>
						</div>
						<div class="separator">
							<br />
						</div>
					</form>
				</section>
			</div>
		</div>
	</body>


</html>