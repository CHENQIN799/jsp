<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList,soft.MessageBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>所有留言</title>
</head>
<body background="./img/02.png">
	<%
		ArrayList<MessageBean> wordlist = null;
		try {
			wordlist = (ArrayList<MessageBean>) session.getAttribute("wordlist");
		} catch (ClassCastException e) {

		}
		if (wordlist == null || wordlist.size() == 0)
			out.print("没有留言可显示!");
		else {
			for (int i = wordlist.size() - 1; i >= 0; i--) {
				MessageBean mm = (MessageBean) wordlist.get(i);
	%>
	留言者：<%=mm.getUser()%>
	<p>
		留言时间：<%=mm.getTime()%></p>
	<p>
		留言标题：<%=mm.getTitle()%></p>
	<p>
		留言内容：
		<textarea rows="8" cols="30" readonly>
   <%=mm.getTxt()%>
   </textarea>
	</p>
	<%
		}
	%>
	<a href="index.jsp">我要留言</a>
	<hr width="90" />
	<%
		}
	%>
</body>
</html>