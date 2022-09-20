<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
Connection conn=null;
try{
	String url="jdbc:oracle:thin:@//localhost:1521/xe";   //xe라는 데이터베이스
	//"jdbc:mysql://localhost/yangjung?serverTimezone=UTC"
	//포트번호 확인 1522인경우도 있음
	String driver="oracle.jdbc.OracleDriver";
	String user="system";
	String pass="1234";
	
	Class.forName(driver);   //드라이버부르고
		conn=DriverManager.getConnection(url,user,pass);   //연결하기
	System.out.println("데이터 베이스 연결 완료");
	
} catch(Exception e) {
	System.out.println("데이터베이스 연결 실패"); e.printStackTrace();
}

%>