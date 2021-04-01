<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pwd=request.getParameter("pwd");
	String name="";
	
	Connection conn =null;
	PreparedStatement pstmt=null;
	ResultSet rs =null;
	String sql = "";
	
	String jdbc_driver ="com.mysql.cj.jdbc.Driver";
	String jdbcurl="jdbc:mysql://localhost/yangjung?serverTimezone=UTC";
	
	try{
		Class.forName(jdbc_driver);
		conn=DriverManager.getConnection(jdbcurl,"camel","1234");
		sql= "select * from car_member where id= ?";
		pstmt = conn.prepareStatement(sql);
		pstmt.setString(1,id);
		
		rs=pstmt.executeQuery();
	 
		if(rs.next()){
			String userID=rs.getString("id");
			String userPWD=rs.getString("passwd");
			String userNAME=rs.getString("name");
			
			if(pwd.equals(userPWD)){ %>
				<%=rs.getString("name")%>님 환영합니다.<%
					session.setAttribute("s_NAME",userNAME);	
					session.setAttribute("s_ID",userID);
					response.sendRedirect("index.jsp");
			}
			else{
				%>
				<script type="text/javascript">
				alert("패스워드 오류\n패스워드를 다시 입력하세요.");
				histoyr.back();
				</script>
				<% 
			}
		
		}
			else{%>
				<script type="text/javascript">
				alert("ID 오류\n ID를 다시 입력하세요.");
				history.back();
				</script>				
	<%}
	
	}catch(SQLException e){
		out.println(e.getMessage());
		
	}finally{
		if(rs!=null)
			rs.close();
		if(pstmt!=null);
			pstmt.close();
		if(conn != null)
			conn.close();
	}
%>

</body>
</html>