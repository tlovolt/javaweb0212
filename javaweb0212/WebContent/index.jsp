<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Java Web 2일차</title>
</head>
<body>
	<a href="./param/paraminput.jsp">파라미터 입력</a><br/>
	<a href="./out/out.jsp">out 객체 이용</a><br/>
	<a href="./app/application.jsp">application 객체</a><br/>
	<a href="./result/input.jsp">포워딩과 리다이렉트의 차이</a><br/>
	
	<%@ page import = "java.io.*, java.sql.*" %>
	<%
		//오늘 날짜를 문자열로 생성
		long d = System.currentTimeMillis();
		//java.sql.Date는 날짜만 저장하고 toString을 호출하면 날짜만 문자열로 리턴합니다.
		Date today = new Date(d);
		String filename = today.toString();
		
		//파일에 기록할 수 있는 객체를 생성
		//파일이 없으면 생성하고 있으면 뒤에 이어붙이도록 생성
		PrintWriter pw = new PrintWriter(
				new FileOutputStream("C:\\Users\\admin\\Documents\\"
					+ filename+".log", true));
		//접속한 IP 주소 가져오기
		String ip = request.getRemoteAddr();
		//요청한 URL 가져오기 - 전체 요청 경로
		String requestURI = request.getRequestURI();
		//루트 경로
		String contextPath = request.getContextPath();
		//전체 요청 경로에서 루트 경로 제외하기
		String url = requestURI.substring(contextPath.length() + 1);
		
		//파일에 기록
		pw.println(ip + "-" + url + "\n");
		pw.flush();
	
		
		pw.close();
	%>
	
</body>
</html>





