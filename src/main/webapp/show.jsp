<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>You professional is :</h3>
	<%
	String[] subjects = (String[]) request.getAttribute("Subjects");
	int i = 1;
	for (String subject : subjects) {
		out.println(i++ + ". " + subject + "<br>");
	}
	%>


</body>
</html>