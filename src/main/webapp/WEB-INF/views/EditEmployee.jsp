<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<%@ page import="com.nagarro.HRManager.model.Employee"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.formadjust {
	align-content: center;
}

.center_div {
	margin: 0 auto;
	width: 90%;
}
</style>

</head>
<body style="background-color: white;">

	<div class="container mt-3">
		<h3 class="text-info" style="margin-left: 280px">EMPLOYEE
			MANAGEMENT PORTAL</h3>
		<a href="logout" class="navbar-brand" style="float: right;">
			<i class="fa fa-sign-out" style="font-size:36px;color:red"></i>  </a>
	</div>

	<div class="container mt-5">
		<fieldset class="border p-3 " style="margin-top: 30px;">
			<legend class="w-auto" style="color: blue;">EDIT EMPLOYEE
				DETAILS</legend>

			<div>

				<div class="container" style="margin-top: 20px">
					<form action="apiEditEmployee" method="post" class="mt-10">
						<div class=" container center_div">
							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Employee Code </label>
								<div class="col-sm-5">
									<input type="number" class="form-control" name="empCode"
										value="${employee.getEmpCode()}" readonly>
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label">Employee Name</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="empName"
										value="${employee.getEmpName()}"
										placeholder="Employee Name" pattern=".{1,100}" required
										title="min 1 max 100 characters">
								</div>
							</div>

							<div class="form-group row">
								<label class="col-sm-2 col-form-label"> Location</label>
								<div class="col-sm-5">
									<input type="text" class="form-control" name="loc"
										placeholder="Employee Location" pattern=".{5,500}"
										value="${employee.getLoc()}" required
										title="min 5 max 500 characters">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label"> Email</label>
								<div class="col-sm-5">
									<input type="email" class="form-control" name="email"
										value="${employee.getEmail()}" placeholder="Employee Email"
										pattern=".{10,100}" required title="min 10 max 100 characters">
								</div>
							</div>
							<div class="form-group row">
								<label class="col-sm-2 col-form-label"> Date of Birth </label>
								<div class="col-sm-5">
									<input type="date" class="form-control"
										value="${employee.getDob()}" name="dob"
										placeholder="Employee DOB">
								</div>
							</div>
							<br>
							<div>
							<h5> ${userinfo}</h5>
							
							</div>
							<div class="form-group row">
								<div class="col-sm-5">
									<button style="margin: 15px;" type="submit"
										class="btn btn-success">Save</button>
									<a href="/" style="margin-left:5px;" class="btn btn-danger">Back</a>
								</div>
							</div>

						</div>
					</form>
				</div>
		</fieldset>
	</div>
</body>
</html>