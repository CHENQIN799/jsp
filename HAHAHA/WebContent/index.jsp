<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="soft.MessageBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>请继续</title>
</head>
<body>
	<form action="Add" method="post">
		留言者： <input type="text" placeholder="输入名字" name="user"> <br>
		留言标题： <input name="title" type="text" placeholder="输入标题"> <br>
		留言内容：
		<textarea name="txt" rows="3" placeholder="输入帖子的内容"></textarea>
		<br> <input type="submit" value="留言"> <br> <input
			type="reset" value="重置">
	</form>
	<br>
	<a href="all">查看所有留言</a>
</body>
</html>