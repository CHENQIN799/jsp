<%@ page language="java" import="java.util.*" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>    
<%@ page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
   
   <c:set var="salary" scope="session" value="${1000}"/>
    <c:if test="${salary < 500 }">
        <tr>
			<td> 我是节约的好孩子/td>
		</tr>
    </c:if>
    <c:if test="${salary > 500 }">
        <tr>
			<td>我是节约的好土豪。</td>
		</tr>
    </c:if>

<p>
   
   <c:set var="day" scope="session" value="${20}"/>
   <c:choose>
      <c:when test="${day>=20}">
                             下旬
      </c:when>
      <c:when test="${day<=10}">
                             上旬
      </c:when>
      <c:otherwise>
                             中旬
      </c:otherwise>      
   </c:choose>

<p>

<% 
   String[] sz={"c","q"};
%>
<c:forEach items="<%=sz %>" var="z">
   <td> <c:out value="${z}" /> </td>
</c:forEach>

<p>

<c:set var="now" value="<%=new java.util.Date()%>" />
<fmt:formatDate value="${now}" type="both" dateStyle="long" timeStyle="long" />

<p>
<a href="<c:url value="/heroes" />">查看所有英雄</a>
	
</body>
</html>