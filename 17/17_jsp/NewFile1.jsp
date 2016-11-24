<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<form action="MyServlet" method="get">
留言者：<input name="user" /><br>
留言标题：<input name="biaoTi" /><br>
留言内容：<textarea name="neiRong" rows="5" cols="30"></textarea><br>
<button type="submit">提交</button>
<button type="button">重置</button>
<a href="#">查看留言</a>
</form>

</body>
</html>