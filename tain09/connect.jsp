<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*"%>
    pageEncoding="utf-8"%>
<%@page import="java.sql.*, java.io.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>


<%
Class.forName("con.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
String connectSQL = "jdbc:sqlserver://localhost:1433;DatabaseName=software";
Connection conn=java.sql.DriverManager.getConnection(connectSQL,"chen","");
Statement stmt=conn.createStatement();
ResultSet rs=stmt.executeQuery("select * from student");
while(rs.next())
{
	out.println("<tr>");
	out.println("<td><a href='modify.jsp?id="+rs.getInt("id")+"'>学号</a></td>");
	out.println("<td>"+rs.getString("name")+"</td>");
	out.println("<td>"+rs.getInt("age")+"</td>");
	out.println("<td>"+rs.getString("major")+"</td>");
	out.println("</tr>");
}
rs.close();
stmt.close();
conn.close();
%>

<%= session.getAttribute("into") %>
</table>
</body>
</html>