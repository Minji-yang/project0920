<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="DBConn.jsp" %>
<%@include file="Header.jsp" %>
<%@include file="Nav.jsp" %>
<section>
<table border=1>
<tr>
<th>성명</th>
<td><input type=text value=name></td>
</tr>
<tr>
<th>사원번호</th>
<td><input type=text value=no></td>
</tr>
<tr>
<td colspan=2></td>
</tr>
</table>
</section>
<%@include file="Footer.jsp" %>
</body>
</html>