<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String reg_mb_id = request.getParameter("reg_mb_id");
	String com_id = request.getParameter("com_id");

	// DB에서 ID검증하기
	// db설치
	// 자바와 DB간의 연결을 위해 ojdbc.jar
	// 드라이버 로딩

	Class.forName("oracle.jdbc.driver.OracleDriver");
	
	// 커넥션 객체 및 쿼리실행객체(statement)도 생성
	String url = "jdbc:oracle:thin:@112.220.114.130:1521:xe";
	Connection conn =DriverManager.getConnection(url, "team2_202404M", "java");
	Statement stmt = conn.createStatement();
	String sql = "select user_id from users where user_id = '" + reg_mb_id + "'";
	sql = "select com_id from company where com_id = '" + com_id + "'";
	ResultSet rs = stmt.executeQuery(sql);
	
	if(rs.next()){
		// id가 존재하므로 사용 불가
%>
		{"rst" : "fail",
		 "msg": "사용불가"}
<%
	}else{
		// 사용가능
%>
		{"rst" : "ok",
		 "msg": "사용가능"}
<%
	}
	rs.close();
	stmt.close();
	conn.close();
%>



