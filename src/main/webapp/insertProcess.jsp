<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="DBConn.jsp" %>
<%
 request.setCharacterEncoding("UTF-8");  // UTF 소문자쓰지마.. 오류...

String id= request.getParameter("id");
String name=request.getParameter("name");
String dept=request.getParameter("dept");
String position=request.getParameter("position");
String duty=request.getParameter("duty");
String phone=request.getParameter("phone");

PreparedStatement pstmt=null;
String sql="insert into person09200(id,name,dept,position,duty,phone)values(?,?,?,?,?,?)";
//(id,name,dept,position,duty,phone)이부분을 생략하면 데이터베이스에 입력한 순서대로 아래를 입력해줘야함
try{pstmt=conn.prepareStatement(sql);
pstmt.setString(1, id);              //int로 주면 db에 업데이트할때 오류 뜸. 문자섞일때가..문제
pstmt.setString(2, name);
pstmt.setString(3,dept);
pstmt.setString(4,position);
pstmt.setString(5,duty);
pstmt.setString(6,phone);

pstmt.executeUpdate();   // 저장 넘겨주기
%>
<script>
alert("등록이 완료 되었습니다.");
location.href="select.jsp";           //바로 조회창 보여주기
</script>

<%

}
catch(Exception e){
	System.out.println("저장 실패");
e.printStackTrace();
}

%>