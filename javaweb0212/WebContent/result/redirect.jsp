<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
		//요청 페이지에서 전달한 파라미터 읽기
		String first = request.getParameter("first");
		String second = request.getParameter("second");
		
		int s1 = 0;
		int s2 = 0;
		try{
			s1 = Integer.parseInt(first);
			s2 = Integer.parseInt(second);
		}catch(Exception e){}
		
		int result = s1 + s2;
		
		//리다이렉트를 하는 경우 데이터 저장
		//리다이렉트를 할 때 request에 데이터를 저장하면 데이터는 소멸됩니다.
		session.setAttribute("result", result);
	
		//리다이렉트 하기
		response.sendRedirect("redirectresult.jsp");
	%>
</body>
</html>




