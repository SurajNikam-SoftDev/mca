<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Bank Detail</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/form.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    
</head>
<body >
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	
%> 
    <header> 
        <div class="header">
            <div class="container" style = "padding:0px">
                <div class="row">
                    <div class="col-sm-12 webtitle text-center">
                        <a href="javascript:void(0)" onclick="location.href='Home'"  style = "color:white;text-decoration: none;">ApniDukaan</a>
                    </div>
                    <div class="col text-left pt-1">
                        <a href="javascript:void(0)" onclick="location.href='MyAddress'" style = "color:white;text-decoration: none;">
                        <i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">room</i>
                        <b style="padding-top: 0px;">Your Location</b>
                        </a>
                    </div>
                    <div class="col text-right pt-1">
                        <a href="javascript:void(0)" onclick="location.href='AddToCart'" style = "text-decoration: none;color:white"><span class="badge rounded-pill bg-danger pt-1" style = "font-weight: bolder;font-size: 13px;">10</span><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">shopping_cart</i></a>
                    </div>
                </div>
                <!--/row-->
                
            </div>
            <!--container-->
        </div>

        <nav aria-label="breadcrumb" >
            <ol class="breadcrumb" style="margin:0px">
                <li class="breadcrumb-item" aria-current="page">Account</li>
                <li class="breadcrumb-item active" aria-current="page">Bank Detail</li>
            </ol>
        </nav>
    
        
    </header>

    
    <div class="container form-container">
        <div class = "form-header pt-3">
            <h5>Bank Details</h5>
        </div>
        <form class = "form-body" action="./BankDetail" method="POST">
            <div class="form-group">
                <label for="accountno">Account Number<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                <input type="text" class="form-control" id = "accountno" name="accountno" placeholder="Account Number">
            </div>
            <div class="form-group">
                <label for="confirmaccountnumber">Confirm Account Number<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                <input type="text" class="form-control" id = "confirmaccountnumber"  name="confirmaccountnumber" placeholder="Confirm Account Number">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="accountholdername">Account Holder Name<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control"  id = "accountholdername" name="accountholdername" placeholder="Account Holder Name">
                    <small style = "font-style:oblique;">Write Same As Passbook Account Name</small>
                </div>
                <div class="form-group col-md-6">
                    <label for="ifsccode">IFSC Code<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control"  id = "ifsccode" name="ifsccode" placeholder="IFSC Code">
                </div>
            </div>

            
            
            <div class = "notice-container">
                <div class="col-md-12">
                    <p>Please enter your correct bank details carefully. They will be used for payment acceptance and refunds.</p>
                </div>
            </div>
            
            <div class = "text-center mt-3">
                <!-- Button trigger modal -->
                <button type="submit" class="btn btn-primary form-control" id = "onsubmitbutton" style = "font-size: 12px;font-weight: bolder;" >Submit</button>
            </div>
            <div class = "text-center mt-3">
				<b><span id = "errorspan" style = "font-size:small;font-weight:bolder;color:red"></span></b>
			</div>
            
            
            <br>
        </form>
        
    </div>
    

    <br>
    <div class="container " >
        <p>Copyright @ 2021 All Rights Reserved. Terms of Use | Privacy Policy AND Website Design and Developed By <b style = "font-style:oblique;font-weight:bolder;">Suraj Nikam</b></p>
    </div>

    <div class = "back-to-top">
        <a href="" onclick="topFunction()" class = "back-to-top-button" id="myBtn" title="Go to top">Back To Top</a>
        <!-- <button >Top</button> -->
    </div>

    <footer> 
        <nav class="nav">
            <a href="Home" class="nav__link" style = "text-decoration: none;">
              <i class="material-icons nav__icon ">home</i>
              <span class="nav__text">Home</span>
            </a>
            <a href="Order" class="nav__link nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon">shopping_bag</i>
                <span class="nav__text">Order</span>
              </a>
              <a href="Shop" class="nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon">dashboard</i>
                <span class="nav__text">Shop</span>
              </a>
              <a href="Notification" class="nav__link"  style = "text-decoration: none;">
                  <i class="material-icons nav__icon">notifications</i>
                  <span class="nav__text">Notify<span class="badge rounded-pill bg-warning " style="font-size: 10px;">10</span></span>
                </a>
              <a href="Account" class="nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon active">person</i>
                <span class="nav__text">Account</span>
              </a>
          </nav>
    </footer>

    <script src="assets/js/jquery-3.5.1.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script type="text/JavaScript">
    	var contactexp = /^\d{10}$/;
    	var accountnoexp = /^\d{9,18}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	//	var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
		var numberexp = /\d+/g;
		var letterspaceexp = /^[a-zA-Z\s]*$/g;
	//	accountno confirmaccountnumber accountholdername ifsccode
	
		$('#onsubmitbutton').click(function() {  
			
			if($('#accountno').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Account Number";
				return false;
			}
			else if(!(accountnoexp.test($('#accountno').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Numbers And Correct Account Number";
				return false;
			}
			else if($('#confirmaccountnumber').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Confirm Account Number";
				return false;
			}
			else if(!(accountnoexp.test($('#confirmaccountnumber').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Numbers In Confirm Account Number";
				return false;
			}
			else if( $('#accountno').val() !== $('#confirmaccountnumber').val() ){
				document.getElementById('errorspan').innerHTML = "Account Number And Confirm Account Number Is Not Same";
				return false;
			}
			else if($('#accountholdername').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Account Holder Name";
				return false;
			}
			else if(!(letterspaceexp.test($('#accountholdername').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Letters Only In Account Holder Name";
				return false;
			}
			else if($('#ifsccode').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter IFSC Code";
				return false;
			}
			else{
				document.getElementById('errorspan').innerHTML = "";
				return true;
			}
			
			return true;
		});	
    </script>
    

    <script>
        function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
        }
     </script>
</body>
</html>