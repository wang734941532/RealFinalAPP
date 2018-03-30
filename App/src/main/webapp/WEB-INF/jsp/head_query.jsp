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
   