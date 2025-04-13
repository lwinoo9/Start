<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

Welcome1 JSP
${loginUser}

<%= session.getAttribute("request_name") %>
<a href="welcome.jsp"> back towelcome.jsp</a>

</body>
</html>