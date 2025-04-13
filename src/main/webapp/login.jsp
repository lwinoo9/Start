<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log in JSP</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

	<%
	if (request.getAttribute("error") != null) {
		out.println(request.getAttribute("error"));
	}
	%>


	<!-- <form action="Login" method="post">
		Name:<input type="text" name="userName" /><br /> <br /> Password:<input
			type="password" name="userPass" /><br /> <br /> <input
			type="submit" value="login" />
	</form> -->
	
	
    
    <div class="container d-flex justify-content-center" style="padding-top: 20vh;">
    <div class="row w-100 justify-content-center">
        <div class="col-lg-5 col-md-8 col-sm-10">
            <form action="Login" class="p-4 border rounded shadow" method="post" style="background-color: #f8f9fa;">
                <h2 class="text-center mb-4" style="color: #5d6b7d;">Welcome To Jsp...</h2>
                
                <div class="mb-3">
                    <label for="userName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="userName" placeholder="Username" required name="userName">
                </div>
                
                <div class="mb-4">
                    <label for="userPass" class="form-label">Password</label>
                    <input type="password" class="form-control" id="userPass" placeholder="Password" required name="userPass">
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