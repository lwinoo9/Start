<%@page import="model.UserBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- 	JSTL
 -->	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%-- <%
	UserBean user = new UserBean();
	user.setName("Use Script");
	out.println(user.getName());
	%> --%>


	<h3>Jsp Action tag</h3>
	<jsp:useBean id="obj1" class="model.UserBean"></jsp:useBean>
	<jsp:setProperty property="name" name="obj1" value="Hello" />
	<jsp:getProperty property="name" name="obj1" />
	<br>

	
	<h3>Scope Result with servlet</h3>
	<jsp:useBean id="userObj" class="model.UserBean" scope="request"></jsp:useBean>
	<jsp:getProperty property="name" name="userObj" /><br>
	<jsp:getProperty property="email" name="userObj" /><br> 
	
	
	<h4>EL</h4>
	${userObj.name}<br>
	${userObj.email}
	
	
	<h4>UserList</h4>
	
	${userList[0].name}<br>
	${userList[1].name}<br>
	${userList}
	
	<h5>JSTL</h5>
	
	<c:if test="${userList[1].email == 'oliver@gmail.com'}">
	${userList[1].email}
	</c:if>
	
	
	
	<h5>Else</h5>
	<c:choose>
	<c:when test="${userList[1].email == 'liver@gmail.com'}">
	${userList[1].email}
	</c:when>
	
	<c:otherwise>
	<p>Not found</p>
	</c:otherwise>
	</c:choose>
	
	<h4>for each</h4>
	<c:forEach items="${userList}" var="obj">
		${obj.name}<br>
	</c:forEach>
	
	<%-- <h4>String List</h4>
	<jsp:useBean id="stringList" class="model.UserBean" scope="request"></jsp:useBean>
	<c:forEach items="${stringList}" var="objlist">
		${objlist}<br>
	</c:forEach> --%>
	
	<h4>String List</h4>
<c:forEach items="${stringList}" var="objList">
    ${objList}<br>
</c:forEach>
	
	
	
	
	
	
	
	
	
	
	
	


</body>
</html>