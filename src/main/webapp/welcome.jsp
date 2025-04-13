<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">


<body>
	<div class="container">
		<h2 class="text-center mb-4">Employee List</h2>

		<c:if test="${not empty LoginUser}">
			<div class="alert alert-success mb-4">Welcome,
				${LoginUser.name} (ID: ${LoginUser.empId})</div>
		</c:if>
		<div class="table-container">
			<table class="table table-bordered table-striped table-hover">
				<thead class="thead-dark">
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Age</th>
						<th>Position</th>
						<th>Salary</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="emp" items="${employeeList}">
						<tr>
							<td>${emp.empId}</td>
							<td>${emp.name}</td>
							<td>${emp.age}</td>
							<td>${emp.position}</td>
							<td>${emp.salary}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</body>
</html>