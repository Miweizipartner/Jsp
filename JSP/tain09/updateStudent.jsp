<%@ page contentType="text/html; charset=utf-8" language="java"%>
<%@ page import="java.sql.*,java.io.*"%>
<html>
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");

		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
		String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
		Connection conn = java.sql.DriverManager.getConnection(connectSQL, "lj", "");

		String sql = "update student set name=?,age=?,magor=? where id=?";
		PreparedStatement stmt = conn.prepareStatement(sql);
		
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
		String magor = request.getParameter("magor");
		
		stmt.setString(1, name);
		stmt.setInt(2, age);
		stmt.setString(3, magor);
		stmt.setInt(4, id);
		
		int rs = stmt.executeUpdate();
		
		stmt.close();
		conn.close();
	%>
	<h1>数据修改成功</h1>
	<%
	response.sendRedirect("connect.jsp");
	session.setAttribute("info", "数据修改成功");
	%>

</body>
</html>