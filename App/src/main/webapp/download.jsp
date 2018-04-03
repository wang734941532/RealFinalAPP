<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   <form action="${pageContext.request.contextPath }/download" method="get">
   	<input type="hidden" name="fileName" value="com.google.android.inputmethod.pinyin-V1.1.1.apk" />
 	<button type="submit" >下载 </button>
   </form>
</body>
</html>