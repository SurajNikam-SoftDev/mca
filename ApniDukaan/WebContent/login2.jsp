<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Login Form</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

	 <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    <link rel="stylesheet" href="assets/css/formwizard.css">
    

    <!-- jquery-ui CSS -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
</head>
<style>

</style>
<body>
	
	<div class="container">
			<div class="row">
				<div class="col-md-8 offset-md-2 mt-5 fancy-forms">
				 	<!-- <div class="cardbox"> -->
				 		<div class = "col-sm-12 webtitle text-center" style = "">
				 			ApniDukaan		
				 		</div>
				 	
						<ul class="nav nav-tabs " id="myTab" role="tablist">
	                        <li class="nav-item">
	                            <a class="nav-link active" id="customer_login" data-toggle="tab" href="#customer_login_form" role="tab" aria-controls="customer_login" aria-selected="true">Customer</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" id="seller_login" data-toggle="tab" href="#seller_login_form" role="tab" aria-controls="seller_login" aria-selected="false">Seller</a>
	                        </li>
                    	</ul>
                    	<div class="tab-content" id="myTabContent">
                        	<div class="tab-pane fade show active " id="customer_login_form" role="tabpanel" aria-labelledby="customer_login">
	                            <div class="fancyformcontainer loginwizard">
	                            	<h6 class="text-center mt-2">Login</h6>
									<form action = "./LogIn" method = "POST" > 
										<div class="form-group mt-2">
									        <label for="email_id">Email address</label>
									        <input type="email" class="form-control" name="email_id" style = "font-size: 12px;" placeholder="Enter valid email address">
									    </div>
									    <div class="form-group mt-2">
									        <label for="password">Password</label>
									        <input type="password" class="form-control" name="password" style = "font-size: 12px;" placeholder="Enters password">
									    </div>
									    <div class = "text-right">
						  					<a href="javascript:void(0)" onclick="location.href='ForgotPassword?type=seller'"  style = "color:black;text-decoration: none;">Forgot Password?</a>
					  					</div>
									    <input type = "hidden" name = "type" value = "customer"/>
									    <div class="text-center mt-2">
					    					<button type="submit" class="btn formsubmitbtn form-control">Submit</button>
					    				</div>
				  					</form>
				  					<hr>
				  					<div class = "text-center">
					  					<a href="javascript:void(0)" onclick="location.href='SignUp'"  style = "color:black;text-decoration: none;">Create A New Account</a>
				  					</div>
				 				</div> 
                       		</div>
	                        <div class="tab-pane fade"  id="seller_login_form" role="tabpanel" aria-labelledby="seller_login">
	                            <div class="fancyformcontainer signupwizard">
	                            	<h6 class="text-center mt-2">Login</h6>
									<form action = "./LogIn" method = "POST">
									    <div class="form-group mt-2">
									        <label for="email_id">Email address</label>
									        <input type="email" class="form-control" name="email_id" style = "font-size: 12px;" placeholder="Enter valid email address">
									    </div>
									    <div class="form-group mt-2">
									        <label for="password">Password</label>
									        <input type="password" class="form-control" name="password" style = "font-size: 12px;" placeholder="Please provide password">
									    </div>
									    <div class = "text-right">
						  					<a href="javascript:void(0)" onclick="location.href='ForgotPassword?type=seller'"  style = "color:black;text-decoration: none;">Forgot Password?</a>
					  					</div>
									    <input type = "hidden" name = "type" value = "seller"/>
									    <div class="text-center mt-2">
					    					<button type="submit" class="btn formsubmitbtn form-control">Submit</button>
					    				</div>
				  					</form>
				  					<hr>
				  					<div class = "text-center">
					  					<a href="javascript:void(0)" onclick="location.href='SignUp'"  style = "color:black;text-decoration: none;">Create A New Account</a>
				  					</div>
				  					
				 				</div>
	                        </div>
                    		
                    	</div>
				 <!-- 	</div> -->
				</div>
			</div>
		</div>

	<div class="container mt-5" style = "text-align:center;">
        <p>Copyright @ 2021 All Rights Reserved. Terms of Use | Privacy Policy AND Website Design and Developed By <b style = "font-style:oblique;font-weight:bolder;">Suraj Nikam</b></p>
    </div>
    
    <script src="assets/js/jquery-3.5.1.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</body>
</html>