<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
 <jsp:useBean id="cart" scope="session" class="moba.BookShopBean"/>
<jsp:setProperty property="*" name="cart"/>
<%
cart.processReqest(request);
%>
<p>你以选购的书有</p>
<%
String[] items=cart.getItems();
for(int i=0; i<items.length;i++){
%>
<li><%=items[i]%></li>
<% } %>
<%@include file="bookShop.jsp" %>
</body>
</html>