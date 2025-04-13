<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" errorPage="error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String num1 = request.getParameter("n1");
	String num2 = request.getParameter("n2");

	int n1 = Integer.parseInt(num1);
	int n2 = Integer.parseInt(num2);

	int result = n1 / n2;
	out.println("Result : " + result);
	%>

</body>

</html>