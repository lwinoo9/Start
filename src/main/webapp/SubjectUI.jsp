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
<style>
.extra-small {
	font-size: 0.6em;
}
</style>

</head>
<body>

	<div class="container mt-5" style="padding-top: 7vh;">
		<div class="row justify-content-center">
			<div class="col-md-6">
				<form class=" p-4 border rounded shadow" action="SubjectsServlet"
					method="post" style="background-color: #f8f9fa;">
					<h4 class="mb-4 text-secondary text-center">ACE Students
						Registration Form</h4>

					<div class="mb-3">
						<label class="form-label fw-bold">Name</label> <input type="text"
							class="form-control" placeholder="Name" name="name"
							required="required">
					</div>

					<div class="mb-3">
						<label class="form-label fw-bold">DOB</label> <input type="text"
							class="form-control" name="dob" placeholder="01/02/2005">
					</div>

					<div class="mb-3">
						<label class="form-label fw-bold">Gender</label>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								value="Male" checked> <label class="form-check-label"
								for="male">Male</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="gender"
								value="Female"> <label class="form-check-label"
								for="female">Female</label>
						</div>
					</div>

					<div class="mb-3" aria-required="true">
						<label class="form-label fw-bold">Knowledge You May Know <small
							class="text-danger extra-small">(Please select at least 2
								options)</small></label>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="HTML"
								name="knowledge" checked> <label
								class="form-check-label" for="html">HTML</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="CSS"
								name="knowledge" checked> <label
								class="form-check-label" for="css">CSS</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox"
								value="JavaScript" name="knowledge"> <label
								class="form-check-label" for="javascript">JavaScript</label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="checkbox" value="jQuery"
								name="knowledge"> <label class="form-check-label"
								for="jquery">jQuery</label>
						</div>
					</div>

					<div class="mb-4">
						<label class="form-label fw-bold">Choose one class you
							want to attend</label> <select class="form-select" name="backend">
							<option selected>Python</option>
							<option>Java</option>
							<option>C++</option>
							<option>JavaScript</option>
						</select>
					</div>

					<div class="d-grid gap-2 d-md-flex justify-content-md-end">
						<button type="reset" class="btn btn-outline-secondary me-md-2">Reset</button>
						<button type="submit" class="btn btn-primary">Submit</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>