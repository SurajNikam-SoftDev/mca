<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: SignUp Form</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    <link rel="stylesheet" href="assets/css/signup.css">
    

    <!-- jquery-ui CSS -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>


</style>
<body>
	<div class="container ">
		
		<div class = "signup-container ">
			<div class = "signup-header text-center">
				<h6>ApniDukaan</h6>
			</div>
			<div class = "signup-body p-3">
				<div class = "text-center ">
					<b class = "p-3">Sign Up</b>
				</div>
				<hr> 
				<form action="./SignUp" method="POST">
					<div class="form-row">
						<div class="form-group col-md-12" style="margin-bottom: -3px;">
							<label for="owner_name">Your Name</label>
						</div>
						<div class="form-group col-md-4">
							<input type="text" class="form-control" name="first_name"
								style="font-size: 10px; color: black; text-transform: uppercase;"
								placeholder="Enter First Name">
						</div>
						<div class="form-group col-md-4">
							<input type="text" class="form-control" name="middle_name"
								style="font-size: 10px; color: black; text-transform: uppercase;"
								placeholder="Enter Middle Name">
						</div>
						<div class="form-group col-md-4">
							<input type="text" class="form-control" name="last_name"
								style="font-size: 10px; color: black; text-transform: uppercase;"
								placeholder="Enter Last Name">
						</div>
					</div>
					<div class="form-row">
						<div class="form-group col-md-8">
							<label for="email_id">Email address</label> <input type="email"
								class="form-control" name="email_id"
								style="font-size: 10px; color: black"
								placeholder="Enter email address">
						</div>
						<div class="form-group col-md-4">
							<label for="contact_number">Contact Number</label> <input
								type="text" class="form-control" name="contact_number"
								style="font-size: 10px; color: black"
								placeholder="Enter Contact Number">
						</div>
					</div>
					<div class="form-group">
						<label for="password">Password</label> <input type="password"
							class="form-control" name="password"
							style="font-size: 10px; color: black"
							placeholder="Enters password">
					</div>
					<div class="form-group">
						<label for="password">Confirm Password</label> <input
							type="password" class="form-control" name="confirm_password"
							style="font-size: 10px; color: black"
							placeholder="Please retype password and try again">
					</div>
					<div class="text-center">
						<button type="submit" class="btn formsubmitbtn form-control">Submit</button>
					</div>
					<hr>
					<div class="text-center">
						<a href="javascript:void(0)" onclick="location.href='LogIn'"
							style="font-weight:bolder;color: black; text-decoration: none;">Click Here For Login Here</a>
					</div>
				</form>


			</div>
			
		</div>
		
	</div>
	
	
    
    <script src="assets/js/jquery-3.5.1.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>