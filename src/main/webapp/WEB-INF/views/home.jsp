<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Details</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color: white;">

	<div class="container mt-3">
		<h3 class="text-info" style="margin-left: 280px">EMPLOYEE
			MANAGEMENT PORTAL</h3>
		<h5 align="right">Welcome ${username}</h5>
		<a href="logout" class="navbar-brand" style="float: right;">
			<i class="fa fa-sign-out" style="font-size:36px;color:red"></i> </a>
	</div>

	<div class="container mt-5">
		<fieldset class="border p-3 " style="margin-top: 30px;">
			<legend class="w-auto" style="color: blue;">Employee Listing</legend>
			<div class="mt-6" style="margin-left: 500px;">
				<a href="addEmployee">Upload Employee Details</a> <a
					style="margin-left: 100px;" href="downloadData">Download
					Employee Details</a>
			</div>
			<div>

				<div class="container" style="margin-top: 20px">
					<table class="table table-sm">
						<thead>
							<tr>
								<th scope="col">Employee Code</th>
								<th scope="col">Employee Name</th>
								<th scope="col">Location</th>
								<th scope="col">Email</th>
								<th scope="col">Date Of Birth</th>
								<th scope="col">Action</th>
							</tr>
						</thead>
						<tbody>

							<c:forEach var="emp" items="${employees}">
								<tr>

									<td><c:out value="${emp.empCode}" /></td>
									<td><c:out value="${emp.empName}" /></td>
									<td><c:out value="${emp.loc}" /></td>
									<td><c:out value="${emp.email}" /></td>
									<td><c:out value="${emp.dob}" /></td>
									<td>
										<form action="editEmployee" method="post">
											<input type="hidden" id="employeeCode" name="empCode"
												value=<c:out value="${emp.empCode}" />> 
												<button type="submit" class="btn btn-primary"><i class='far fa-edit' style='font-size:18px'></i> Edit</button>
										</form>
									</td>
									<td>
								</tr>
							</c:forEach>


						</tbody>
					</table>
				</div>
		</fieldset>
	</div>

</body>
</html>