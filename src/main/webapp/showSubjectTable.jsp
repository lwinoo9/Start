<%@page import="model.UserSubject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css"
	rel="stylesheet">


</style>
</head>
<body>


	<jsp:useBean id="UserKnowledge" class="model.UserSubject" />
	<jsp:setProperty name="UserKnowledge" property="*" />

	<div class="container mt-4">
		<table class="table table-bordered table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th>Label</th>
					<th>Use JSP UseBean</th>
					<th>Use Expression Language</th>
				</tr>
			</thead>
			<tbody>
				<tr>
					<td>Name</td>
					<td><jsp:getProperty property="name" name="UserKnowledge"/></td>
					<td>${UserKnowledge.name}</td>
				</tr>
				<tr>
					<td>DOB</td>
					<td>${UserKnowledge.dob}</td>
					<td>${UserKnowledge.dob}</td>
				</tr>
				<tr>
					<td>Gender</td>
					<td>${UserKnowledge.gender}</td>
					<td>${UserKnowledge.gender}</td>
				</tr>
				<tr>
					<td>Knowledge You May Know</td>
					<td>${UserKnowledge.knowledges}</td>
					<td>${UserKnowledge.knowledges}</td>
				</tr>
				<tr>
					<td>Class You want to attend</td>
					<td>${UserKnowledge.backend}</td>
					<td>${UserKnowledge.backend}</td>
				</tr>
			</tbody>
		</table>
	</div>




</body>
</html>



