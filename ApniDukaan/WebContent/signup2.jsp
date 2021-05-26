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
	                            <a class="nav-link active" id="signup_customer" data-toggle="tab" href="#signup_customer_form" role="tab" aria-controls="signup_customer" aria-selected="true">Customer</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" id="signup_seller" data-toggle="tab" href="#signup_seller_form" role="tab" aria-controls="signup_seller" aria-selected="false">Seller</a>
	                        </li>
                    	</ul>
                    	<div class="tab-content" id="myTabContent">
                        	<div class="tab-pane fade show active " id="signup_customer_form" role="tabpanel" aria-labelledby="signup_customer">
	                            <div class="fancyformcontainer">
	                            	<h6 class="text-center mt-2">SignUp</h6> 
									<form action = "./SignUp" method = "POST"> 
										<div class="form-row">
											<div class="form-group col-md-12" style = "margin-bottom:-3px;">
							                    <label for="owner_name">Your Name</label> 
							                </div>
							            	<div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="first_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter First Name">
							                </div>
							                <div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="middle_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter Middle Name">
							                </div>
							                <div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="last_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter Last Name">
							                </div>
							            </div>
										<div class="form-row">
							            	<div class="form-group col-md-8">
							                    <label for="email_id">Email address</label>
									        		<input type="email" class="form-control" name="email_id" style = "font-size: 12px;color:black" placeholder="Enter email address">
							                </div>
							                <div class="form-group col-md-4">
							                    <label for="contact_number">Contact Number</label>
									        		<input type="text" class="form-control" name="contact_number" style = "font-size: 12px;color:black" placeholder="Enter Contact Number">
							                </div>
							            </div>
									    <div class="form-group mt-2">
									        <label for="password">Password</label>
									        <input type="password" class="form-control" name="password"  style = "font-size: 12px;color:black" placeholder="Enters password">
									    </div>
									    <div class="form-group mt-2">
									        <label for="password">Confirm Password</label>
									        <input type="password" class="form-control" name="confirm_password" style = "font-size: 12px;color:black" placeholder="Please retype password and try again">
									    </div>
									    <input type = "hidden" name = "type" value = "customer"/>
									    <div class="text-center">
					    					<button type="submit" class="btn formsubmitbtn form-control">Submit</button>
					    				</div>
					    				<hr>
					  					<div class = "text-center">
						  					<a href="javascript:void(0)" onclick="location.href='LogIn'"  style = "color:black;text-decoration: none;">Login Here</a>
					  					</div>
				  					</form>
				 				</div>
                       		</div>
	                        
	                        <div class="tab-pane fade"  id="signup_seller_form" role="tabpanel" aria-labelledby="signup_seller">
	                            <div class="fancyformcontainer">
	                            	<h6 class="text-center mt-2">SignUp</h6>
									<form action = "./SignUp" method = "POST">
										<div class="form-group mt-2">
									        <label for="shop_name">Shop Name</label>
									        <input type="text" class="form-control" name="shop_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter Shop Name">
									    </div>
									    <div class="form-row">
											<div class="form-group col-md-12" style = "margin-bottom:-3px;">
							                    <label for="owner_name">Owner Name</label> 
							                </div>
							            	<div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="first_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter First Name">
							                </div>
							                <div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="middle_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter Middle Name">
							                </div>
							                <div class="form-group col-md-4">
							                    <input type="text" class="form-control" name="last_name" style = "font-size: 12px;color:black;text-transform:uppercase;" placeholder="Enter Last Name">
							                </div>
							            </div>
									    <div class="form-row">
							            	<div class="form-group col-md-8">
							                    <label for="email_id">Email address</label>
									        	<input type="email" class="form-control" name="email_id" style = "font-size: 12px;color:black" placeholder="Enter email address">
							                </div>
							                <div class="form-group col-md-4">
							                    <label for="contact_number">Contact Number</label>
									        	<input type="text" class="form-control" name="contact_number" style = "font-size: 12px;color:black" placeholder="Enter Contact Number">
							                </div>
							            </div>
									    
									    <div class="form-group mt-2">
									        <label for="password">Password</label>
									        <input type="password" class="form-control" name="password" style = "font-size: 12px;color:black" placeholder="Please provide password">
									    </div>
									    <div class="form-group mt-2">
									        <label for="password">Confirm Password</label>
									        <input type="password" class="form-control" name="confirm_password" style = "font-size: 12px;color:black" placeholder="Please retype password and try again">
									    </div>
									    <input type = "hidden" name = "type" value = "seller"/>
									    <div class="text-center">
					    					<button type="submit" class="btn formsubmitbtn form-control">Submit</button>
					    				</div>
					    				<hr>
					  					<div class = "text-center">
						  					<a href="javascript:void(0)" onclick="location.href='LogIn'"  style = "color:black;text-decoration: none;">Login Here</a>
					  					</div>
				  					</form>
				 				</div>
	                        </div>
                    		
                    	</div>
				 <!-- 	</div> -->
				 
				</div>
			</div>
		</div>
		<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Subscribe our Newsletter</h5>
                <button type="button" class="close" data-dismiss="modal">&times;</button>
            </div>
            <div class="modal-body">
                <p>Subscribe to our mailing list to get the latest updates straight in your inbox.</p>
                <form>
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Name">
                    </div>
                    <div class="form-group">
                        <input type="email" class="form-control" placeholder="Email Address">
                    </div>
                    <button type="submit" class="btn btn-primary">Subscribe</button>
                </form>
            </div>
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