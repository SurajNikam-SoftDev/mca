<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
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
    
    <script type = "text/javascript">
    	function validation(){
    		/*
    		var contactno = document.getElementById("contactno").value;
    		var emailid = document.getElementById("emailid").value;
    		var zipcode = document.getElementById("zipcode").value;
    		var name = document.getElementById("name").value;
			*/
    		
    		var contactexp = /^\d{10}$/;
			var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var zipexp = /^\d{6}$/;
			var letterexp = /^[A-Za-z]+$/;	//	single word
            var letterspaceexp = /^[a-zA-Z\s]*$/g;	//	multiple words
			
			
            if(document.form.first_name.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter First Name";  
    			return false;
    		}
            else if(!document.form.first_name.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Characters Only";  
    			return false;
    		}
            else if(document.form.middle_name.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Middle Name";  
    			return false;
    		}
            else if(!document.form.middle_name.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Characters Only";  
    			return false;
    		}
    		else if(document.form.last_name.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Last Name";  
    			return false;
    		}
    		else if(!document.form.last_name.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Characters Only";  
    			return false;
    		}
    		else if(document.form.email_id.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Email Id";  
    			return false;
    		}
    		else if(!document.form.email_id.value.match(emailexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Correct Email Id";  
    			return false;
    		}
    		else if(document.form.contact_number.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Select Contact Number";  
    			return false;
    		} 
    		else if(!document.form.contact_number.value.match(contactexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Correct Contact Number";  
    			return false; 
    		}
    		else if(document.form.password.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Password";  
    			return false;
    		}
    		else if(document.form.confirm_password.value == ''){
    			document.getElementById("errorspan").innerHTML = "Enter Confirm Password";  
    			return false;
    		}
    		else if(document.getElementById("confirm_password").value !== document.getElementById("password").value){
    			document.getElementById("errorspan").innerHTML = "Password And Confirm Password Is Not Same";  
    			return false;
    		}
    		else
    		{
    			document.getElementById("errorspan").innerHTML = "";
    			return true;
    		}

    	} 
    </script>
    
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
				<form name = "form" action = "./SignUp" method = "POST">
					<div class="form-row">
						<div class="form-group col-md-12" style="margin-bottom: -3px;">
							<label for="owner_name">Your Name<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
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
							<label for="email_id">Email address<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> <input type="email"
								class="form-control" name="email_id"
								style="font-size: 10px; color: black"
								placeholder="Enter email address">
						</div>
						<div class="form-group col-md-4">
							<label for="contact_number">Contact Number<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> <input
								type="text" class="form-control" name="contact_number"
								style="font-size: 10px; color: black"
								placeholder="Enter Contact Number" maxlength = "10">
						</div>
					</div>
					<div class="form-group">
						<label for="password">Password<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> <input type="password"
							class="form-control" name="password" id="password"
							style="font-size: 10px; color: black"
							placeholder="Enters password">
					</div>
					<div class="form-group">
						<label for="password">Confirm Password<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> <input
							type="password" class="form-control" name="confirm_password" id="confirm_password"
							style="font-size: 10px; color: black"
							placeholder="Please retype password and try again">
					</div>
					<div class="text-center">
						<button type="submit" class="btn formsubmitbtn form-control" onclick = "return validation()">Submit</button>
					</div>
					
				</form>

				<div class = "text-center pt-3">
		        	<b><span id = "errorspan" style = "font-size:x-small;font-weight:bolder;color:red"></span></b>
		        </div>
		        	<hr>
					<div class="text-center">
						<a href="javascript:void(0)" onclick="location.href='LogIn'"
							style="font-weight:bolder;color: black; text-decoration: none;">Click Here For Login Here</a>
					</div>
			</div>
			
		</div>
		
	</div>
	
	
    
    <script src="assets/js/jquery-3.5.1.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>