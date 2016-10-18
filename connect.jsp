<%@page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'connect.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <%
   Class.forName("com.microsoft.sqlserver.jdbc.SQLserverDriver").newInstance();
   String connectSQL="jdbc:sqlserver://localhost:1433;DatabaseName=software";
   Connection conn=java.sql.DriverManager.getConnection(connectSQL,"sa","");
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery("select *from student");
   out.println("<table>");
   while(rs.next())
   {
   out.println("<tr>");
   out.println("<td>"+rs.getInt("id")+"</td>");
   out.println("<td>"+rs.getString("name")+"</td>");
   out.println("<td>"+rs.getInt("age")+"</td>");
   out.println("<td>"+rs.getString("major")+"</td>");
   out.println("</tr>");
   }
   out.println("</table>");
   %>
  <h1>
  按年龄来查询
  </h1>
   <% 
   int age=Integer.parseInt(request.getParameter("age"));
   String sql="select*from student where age=?";
   PreparedStatement st=conn.prepareStatement(sql);
   st.setInt(1,age);
   rs=st.executeQuery();
   out.println("<table>");
   while(rs.next())
   {
   out.println("<tr>");
   out.println("<td>"+rs.getInt("id")+"</td>");
   out.println("<td>"+rs.getString("name")+"</td>");
   out.println("<td>"+rs.getInt("age")+"</td>");
   out.println("<td>"+rs.getString("major")+"</td>");
   out.println("</tr>");
   }
  out.println("</table>");
   rs.close();
   stmt.close();
   conn.close();
   %>
  </body>
</html>
