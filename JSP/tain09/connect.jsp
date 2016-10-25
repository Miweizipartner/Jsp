<%@ page contentType="text/html; charset=gb2312" language="java" %>
<%@ page import="java.sql.*,java.io.*"%>
<html>
<body>

<table>
<%

  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
  String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=data";
  Connection conn=java.sql.DriverManager.getConnection(connectSQL,"lj","");
  Statement stmt=conn.createStatement();
  ResultSet rs=stmt.executeQuery("select * from student");
  while(rs.next())
  {
    out.println("<tr>");
    out.println("<td><a href='modifyl.jsp?id="+rs.getInt("id")+"'>Ñ§ºÅ</a></td>");
    out.println("<td>"+rs.getString("name")+"</td>");
    out.println("<td>"+rs.getInt("age")+"</td>");
    out.println("<td>"+rs.getString("magor")+"</td>");
    out.println("</tr>");
  }
  rs.close();
  stmt.close();
  conn.close();

  %>  
  
  <%=session.getAttribute("info") %>
</table>
</body>
</html>
