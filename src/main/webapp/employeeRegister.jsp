<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

</head>
<body>
<div class="container d-flex justify-content-center align-items-center" style="min-height: 80vh;">
    <div class="row w-100 justify-content-center">
        <div class="col-md-6 col-lg-5">
            <form action="emp_register" method="post" class="p-4 border rounded shadow"  style="background-color: #f8f9fa;">
                <h2 class="text-center mb-4" style="color: #5d6b7d;">Register Form</h2>
                
                <div class="mb-3">
                    <label class="form-label">Name</label>
                    <input type="text" class="form-control" placeholder="Username"  name="ename">
                </div>
                
                <div class="mb-3">
                    <label class="form-label">Age</label>
                    <input type="text" class="form-control" placeholder="Age" name="eage" >
                </div>
                
                <div class="mb-4">
                    <label class="form-label">Position</label>
                    <input type="text" class="form-control" placeholder="Position" name="eposition">
                </div>
                <div class="mb-4">
                    <label class="form-label">Salary</label>
                    <input type="text" class="form-control" placeholder="Salary" name="esalary">
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