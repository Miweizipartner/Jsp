<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="div.css" />
</head>
<body>
<form action="bookShopCheck.jsp" method="get">
<h3>欢迎访问本网站！</h3>
<h3>请选择要购买的书：</h3>
<div class="div_4">
<select name="item">
<option>《Java程序设计与项目实训教程》</option>
<option>《Jsp程序设计技术教程1》</option>
<option>《Jsp程序设计技术教程5》</option>
<option>《Jsp程序设计技术教程6》</option>
<option>《Jsp程序设计技术教程2》</option>
<option>《Jsp程序设计技术教程7》</option>
<option>《Jsp程序设计技术教程8》</option>
<option>《Jsp程序设计技术教程3》</option>
</select>
</div>
<input type="submit" name="submit" value="购买">


</form>
</body>
</html>