<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import ="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<%
	Connection conn = null;

		try{
		
		String jdbcDriver="com.mysql.cj.jdbc.Driver";
		String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
		String user ="camel";
		String password ="1234";
		
		Class.forName(jdbcDriver);
		conn= DriverManager.getConnection(jdbcurl,user,password);
		System.out.println("DB 연결 성공");
		}catch (SQLException e){
			e.printStackTrace();
			System.out.println("DB 연결 실패");
			
		}
		

		
	%>
	
</body>
</html>