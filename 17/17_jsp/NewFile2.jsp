<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<form action="MyServlet" method="get">
		留言者：<input name="user" value=<%=request.getAttribute("user")%> ><br> 
		留言标题：<input name="biaoTi" value=<%=request.getAttribute("biaoTi") %> ><br>
		留言内容：
		<textarea name="neiRong" rows="5" cols="30"><%=request.getAttribute("neiRong") %></textarea>
		<br>
		<button type="submit">修改</button>
		<button type="button">重置</button>
		<a href="NewFile1.jsp">留言</a>
	</form>
</body>
</html>