<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>

<link href="${pageContext.request.contextPath }/statics/css/bootstrap.min.css" rel="stylesheet">
    <!-- Font Awesome -->
    <link href="${pageContext.request.contextPath }/statics/css/font-awesome.min.css" rel="stylesheet">
    <!-- NProgress -->
    <link href="${pageContext.request.contextPath }/statics/css/nprogress.css" rel="stylesheet">
 
    <!-- Custom Theme Style -->
    <link href="${pageContext.request.contextPath }/statics/css/custom.min.css" rel="stylesheet">

<script type="text/javascript">

$(function(){
	
	$('.download').click(function () {
	    var tt = new Date().getTime();
	    var url = 'http://192.168.1.231:8080/91survey/ws/excel/download';

	    /**
	     * 使用form表单来发送请求
	    * 1.method属性用来设置请求的类型——post还是get
	    * 2.action属性用来设置请求路径。
	    * 
	     */
	    var form=$("<form>");//定义一个form表单
	    form.attr("style","display:none");
	    form.attr("target","");
	    form.attr("method","get");  //请求类型
	    form.attr("action",url);   //请求地址
	    $("body").append(form);//将表单放置在web中

	    　　/**
	         * input标签主要用来传递请求所需的参数：
	         *
	         * 1.name属性是传递请求所需的参数名.
	         * 2.value属性是传递请求所需的参数值.
	         *
	         * 3.当为get类型时，请求所需的参数用input标签来传递，直接写在URL后面是无效的。
	         * 4.当为post类型时，queryString参数直接写在URL后面，formData参数则用input标签传递
	         *       有多少数据则使用多少input标签
	         *
	    　　　*/
	    var input1=$("<input>");
	    input1.attr("type","hidden");
	    input1.attr("name","tt");
	    input1.attr("value",tt);
	    form.append(input1);

	    var input2=$("<input>");
	    input2.attr("type","hidden");
	    input2.attr("name","companyId");
	    input2.attr("value",companyId);
	    form.append(input2);

	    form.submit();//表单提交
	})
	
	
	$('.download').click(function(){
	    var tt =newDate().getTime();
	    var url = restUrl +'/excel/download?userId='+ userId;
	    var form=$("<form>");//定义一个form表单
	    form.attr("style","display:none");
	    form.attr("target","");
	    form.attr("method","post");//请求类型
	    form.attr("action",url);//请求地址
	    $("body").append(form);//将表单放置在web中

	    var input1=$("<input>");
	    input1.attr("type","hidden");
	    input1.attr("name","tt");
	    input1.attr("value",tt);
	    form.append(input1);

	    var input2=$("<input>");
	    input2.attr("type","hidden");
	    input2.attr("name","companyId");
	    input2.attr("value",companyId);
	    form.append(input2);
	    form.submit();//表单提交
	});
	
});





</script>



</head>
<body>
 <i class="fa fa-download" aria-hidden="true" title="下载" onclick="window.open('file/sss.xml')"></i>---
</body>
</html>