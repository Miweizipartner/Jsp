<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="user1" scope="session" class="bao.pd"></jsp:useBean>

	<form action="NewFile4.jsp" method="post">
		<%
		String test = user1.getZt().get(0);
		ArrayList<String> xx = user1.getTm().get(test);
		
		out.println("<h1>"+ test + "应该怎样回答</h>");
		
		for(int i=0;i<4;i++){
			String nr = xx.get(i);
			String num = String.valueOf(i);
			out.print("<p><input type='radio' name='phone' value='+"+num+"'>"+nr+"</input></p>");
		}
		
		
		%>

    <button type="submit">显示</button>
	</form>
</body>
</html>