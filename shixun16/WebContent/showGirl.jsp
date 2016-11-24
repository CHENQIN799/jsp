<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
       <%@ page import="com.sccc.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>展示女朋友页面</title>
<!-- 初始化朋友 -->
<jsp:useBean id="myGirlFriend" class="com.sccc.GirlFriend"  scope="session"/>
<!-- 一次填入 ，再无烦恼 -->
<jsp:setProperty property="*" name="myGirlFriend"/>
<!-- 将刚才填入的值，设置到朋友内
<jsp:setProperty  name="myGirlFriend" property ="yanZhi"/>
<jsp:setProperty  name="myGirlFriend" property ="tiZhong"/>
<jsp:setProperty  name="myGirlFriend" property ="shenGao"/>
<jsp:setProperty  name="myGirlFriend"  property ="shengQi"/>
<jsp:setProperty  name="myGirlFriend" property ="ai"/>
-->
</head>
<body background="img/1 (2).jpg">
<p>女朋友的颜值：<jsp:getProperty  name="myGirlFriend" property ="yanZhi"/>分</p>
<p>女朋友的体重：<jsp:getProperty  name="myGirlFriend" property ="tiZhong"/>kg</p>
<p>女朋友的身高：<jsp:getProperty  name="myGirlFriend" property ="shenGao"/>cm</p>
<p>女朋友的怒值：<jsp:getProperty  name="myGirlFriend" property ="shengQi"/></p>
<p>女朋友的爱值：<jsp:getProperty  name="myGirlFriend" property ="ai"/></p>

<p><a href="status.jsp">前方高能！！开始 测试！！！</a></p>



</body>
</html>