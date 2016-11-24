<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" scope="session" class="bao.npy"></jsp:useBean>
<jsp:setProperty property="*" name="user"/>
<p>你女朋友的名字：<%=user.getMz() %></p>
<p>你女朋友的颜值：<%=user.getYz() %></p>
<p>你女朋友的体重：<%=user.getTz() %></p>
<p>你女朋友的气值：<%=user.getSq() %></p>
<p>你女朋友的爱值：<%=user.getAi() %></p>
<a href="NewFile3.jsp">测试</a>
</body>
</html>