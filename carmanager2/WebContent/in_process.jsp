<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="DBCon.jsp" %>

<%
	PreparedStatement pstmt=null;
	String sq ="select * from car_member";
	pstmt=conn.prepareStatement(sq);
	ResultSet rs = null;
	
	rs=pstmt.executeQuery();
	while(rs.next()){
		System.out.println("id : "+rs.getString("id"));
		
	}

%>


<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String passwd = request.getParameter("passwd");
	String passwdck = request.getParameter("passwdck");
	String gender = request.getParameter("gender");
	String email = request.getParameter("email1")+"@"+request.getParameter("email2");
	String phone = request.getParameter("phone1")+"-"+request.getParameter("phone2")+"-"+request.getParameter("phone3");
	String tel = request.getParameter("tel1")+"-"+request.getParameter("tel2")+"-"+request.getParameter("tel3");
	String address= request.getParameter("address");
	String carNumber = request.getParameter("carNumber");
	String carType = request.getParameter("carType");
	
	System.out.println("id : "+id);
	System.out.println("name : "+name);
	System.out.println("passwd : "+passwd);
	System.out.println("gender : " +gender);
	System.out.println("email : "+email);
	System.out.println("phone : "+phone);
	System.out.println("tel : "+tel);
	System.out.println("address : "+address);
	System.out.println("carNumber : "+carNumber);
	System.out.println("carType : "+carType);

	
	
	try{
		String sql="insert into car_member(id,name,passwd,gender,email,phone,tel,address,carNumber,carType) values(?,?,?,?,?,?,?,?,?,?)";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, passwd);
		pstmt.setString(4, gender);
		pstmt.setString(5, email);
		pstmt.setString(6, phone);
		pstmt.setString(7, tel);
		pstmt.setString(8, address);
		pstmt.setString(9, carNumber);
		pstmt.setString(10, carType);
		pstmt.executeUpdate();
		System.out.println("save");
		
		

		
	}catch(SQLException e){
		e.printStackTrace();
		System.out.println("저장 실패");
	}
%>
</body>
</html>