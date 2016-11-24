<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="bao.npy" %>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
<%
 npy gf = (npy)session.getAttribute("user");
 String phone = request.getParameter("phone");
 
 int sq = gf.getSq();
 int ai = gf.getAi();
 
 if(phone.equals("0")){
	 sq = sq+10;
 }else if(phone.equals("1")){
	 sq = sq+30;
 }else if(phone.equals("2")){
	 ai = ai+20;
 }else{	
	 ai = ai+20;
	 sq = sq+10;
 }
 
 gf.setSq(sq);
 gf.setAi(ai);
 
 if(gf.getSq()>20){
	 out.println("0.0");
 }else{
	 out.println("9.0生气值到"+gf.getSq());
 if(gf.getAi()>30){
	 out.println("不错");
 }
 out.println("<p><p href='NewFile3.jsp'></a></p>");
 }
 if(gf.getAi()>100){
	 out.println("你赢了");

 }
%>

</body>
</html>