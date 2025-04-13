<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<form action="Subjects" method="post">

		<br>
		<div>
			<label for="course">Select Subject</label> <select id="course"
				name="course" multiple="multiple">
				<option value="Java">Java</option>
				<option value="Android">Android</option>
				<option value="PHP">PHP</option>
				<option value="ASP">ASP</option>

			</select>
		</div>
		<br>

		<div>
			<button type="submit">choose</button>
		</div>

	</form>

</body>
</html>