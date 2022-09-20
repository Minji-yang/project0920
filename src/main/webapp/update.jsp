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
<h1 id=head1>직원 정보 조회</h1>
<table border=1 id=tab1>
<tr>
<th> no</th>
<th> 성명</th>
<th> 사번</th>
<th> 직급</th>
<th> 직책</th>
<th> 연락처</th>
<th> 소속부서</th>
</tr>
<%
ResultSet rs=null;
PreparedStatement pstmt=null;
String sql="select*from person09200";
int no=0;
try{
	pstmt=conn.prepareStatement(sql);
	rs=pstmt.executeQuery();
	while(rs.next()){
		int id=rs.getInt("id");
		String name=rs.getString("name");
		String dept=rs.getString("dept");
		String position=rs.getString("position");
		String duty=rs.getString("duty");
		String phone=rs.getString("phone");
				no++;


%>
<tr>
<td><%=no %></td>
<td><%=name %></td>
<td><a href="updateProcess.jsp"><%=id %></a></td>
<td><%=position %></td>
<td><%=duty %></td>
<td><%=phone %></td>
<td><%=dept %></td>
</tr>
<%
	}
}catch(Exception e) {
	System.out.println("데이터베이스 오류");
	e.printStackTrace();
}
%>

</table>
</section>
</section>
<%@include file="Footer.jsp" %>
</body>
</html>