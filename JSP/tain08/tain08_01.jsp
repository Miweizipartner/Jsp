<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "sa", "");
		
		//String sql = "insert into student values(?,?,?,?)";
		String sql = "delete from student where id=?";
		
		PreparedStatement stmt = conn.prepareStatement(sql);

		int id = Integer.parseInt(request.getParameter("id"));
		//String name = request.getParameter("name");
		//int age = Integer.parseInt(request.getParameter("age"));
		//String magor = request.getParameter("major");

		//stmt.setInt(1, id);
		//stmt.setString(2, name);
		//stmt.setInt(3, age);
		//stmt.setString(4, magor);
		
		stmt.setInt(1, id);

		stmt.executeUpdate();
		stmt.close();
		conn.close();
	%>
	<!-- 插入成功！ -->
	删除成功！
</body>
</html>