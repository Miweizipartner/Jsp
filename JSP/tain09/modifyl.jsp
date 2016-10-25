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
		Statement stmt = conn.createStatement();
		int id = Integer.parseInt(request.getParameter("id"));

		String sql = "select * from student where id=" + id;

		ResultSet rs = stmt.executeQuery(sql);

		String name = "";
		int age = 0;
		String magor = "";

		while (rs.next()) {
			name = rs.getString("name");
			age = rs.getInt("age");
			magor = rs.getString("magor");

		}
	%>

	<form action="updateStudent.jsp" method="post">
		<p>
			学号：<input type="hidden" name="id" value='<%=id%>'>
		<p>
			姓名：<input type="text" name="name" value='<%=name%>'>
		<p>
			年龄：<input type="text" name="age" value='<%=age%>'>
		<p>
			专业：<input type="text" name="magor" value='<%=magor%>'>
			<button type="submit">提交</button>
	</form>
</body>
</html>