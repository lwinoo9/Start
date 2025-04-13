<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Create Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

</head>
<body>

<span> ${error}</span>

	<%-- <%=(request.getAttribute("error") != null) ? request.getAttribute("error") : ""%>
 --%>
	<!-- <form action="register" method="post">
		Name <input type="text" name="userName" /><br /> <br /> Email <input
			type="email" name="eMail" /><br /> <br /> Password<input
			type="password" name="userPass" /><br /> <br /> <input
			type="submit" value="create" />
	</form>
 -->
 
 

<div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">
    <div class="row w-100 justify-content-center">
        <div class="col-md-6 col-lg-5">
            <form action="register" method="post" class="p-4 border rounded shadow"  style="background-color: #f8f9fa;">
                <h2 class="text-center mb-4" style="color: #5d6b7d;">Register Form</h2>
                
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" placeholder="Username" required name="userName">
                </div>
                
                <div class="mb-3">
                    <label class="form-label">Email</label>
                    <input type="email" class="form-control" placeholder="some@gmail.com" name="eMail" required>
                </div>
                
                <div class="mb-4">
                    <label class="form-label">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="userPass">
                </div>
                
                <div class="d-grid">
                    <button type="submit" class="btn btn-primary">Create</button>
                </div>
            </form>
        </div>
    </div>
</div>  



</body>
</html>