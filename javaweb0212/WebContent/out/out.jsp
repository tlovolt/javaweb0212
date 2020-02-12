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
		out.println("<h2>out을 이용한 출력</h2>");
		out.println("<p>나이<select name='age'>");
		
		//<option value=1>1</option>
		
		for(int i=1; i<100; i=i+1){
			out.println("<option value=" + i + ">" + i + "</option>");
		}
		
		out.println("</select></p>");
	%>
	
	<div id="disp"></div>
	<script>
		var disp = document.getElementById("disp");
		var html = "<select name='year'>";
		for(var i=1900; i<2021; i=i+1){
			html = html + "<option value=" + i + ">" + i + "</option>";
		}
		html = html + "</select>";
		disp.innerHTML = html;
	</script>
</body>

</html>







