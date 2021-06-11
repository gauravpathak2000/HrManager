<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous" />
	<style>
		.footer {
	margin-top: 20px;
	padding-top: 10px;
	padding-bottom: 10px;
	margin-left: 180px;
}
	</style>

</head>
<body style="background-color: white;">

	<div class="container mt-3">
	<h3 class="text-info" style=" margin-left: 280px" >EMPLOYEE MANAGEMENT PORTAL</h3>
	</div>

	<div class="container mt-5">
		<fieldset class="border p-3 " style="margin-top: 30px;">
			<legend class="w-auto" style="color: blue;">LOGIN</legend>
			<div>

				<div class="container" style="margin-top: 20px">
					<form action="login" method="post">
		
			
						<div class="form-group row" style="margin-top: 50px">
							<label for="username" class="col-sm-2 col-form-label">User
								Id: </label>
							<div class="col-sm-5">
								<input type="text" class="form-control" placeholder="Username"
									required="required" name="username" />
							</div>
						</div>
						<div class="form-group row">
							<label for="Password" class="col-sm-2 col-form-label">Password: </label>
							<div class="col-sm-5">
								<input type="password" class="form-control" placeholder="Password"
									required="required" name="password" />
							</div>
						</div>
			
						<div class="form-group row footer">
							<button type="submit"  class="btn btn-success" >Login</button>
						</div>
					</form>
				</div>
		
		</fieldset>
	</div>

</body>
</html>