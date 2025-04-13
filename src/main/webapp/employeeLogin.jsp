<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<body>
	<c:if test="${not empty sessionScope.error}">
		<div class="alert alert-danger">
			<c:out value="${sessionScope.error}" />
			<c:remove var="error" scope="session" />
		</div>
	</c:if>

	<div class="container d-flex justify-content-center align-items-center"
		style="min-height: 80vh;">
		<div class="row w-100 justify-content-center">
			<div class="col-md-6 col-lg-5">
				<form action="emp_loginServlet" method="post"
					class="p-4 border rounded shadow"
					style="background-color: #f8f9fa;">
					<h3 class="text-center mb-4" style="color: #5d6b7d;">Employee
						Login</h3>

					<div class="mb-3">
						<label class="form-label">Employee ID</label> <input type="text"
							class="form-control" name="eid" value="${empId}">
					</div>

					<div class="mb-3">
						<label class="form-label">Name</label> <input type="text"
							class="form-control" placeholder="Username" name="ename"
							>
					</div>


					<div class="d-grid">
						<button type="submit" class="btn btn-primary">Login</button>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>