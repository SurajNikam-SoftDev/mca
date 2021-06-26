<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Add Address</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/form.css">
	<script src="assets/js/countries.js"></script>
	
	
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
                        <%
                        	String city = AddressDao.getCurrentLocationUsingEmailid(session.getAttribute("emailid").toString());
                        %>
                        <b style="padding-top: 0px;"><%= city.equals("undefined")?"Add Address":city %></b>
                        </a>
                    </div>
                    <div class="col text-right pt-1">
                    <%
                    	int cartcount = AddProductToCardDao.getCountofCardUsingEmailid(session.getAttribute("emailid").toString());
                    %>
                        <a href="javascript:void(0)" onclick="location.href='AddToCart'" style = "text-decoration: none;color:white">
                    <%
                    	if(cartcount > 0)
                    	{	
                    %>    
                        <span class="badge rounded-pill bg-danger pt-1" style = "font-weight: bolder;font-size: 13px;"><%= cartcount %></span>
                    <%
                    	}
                    %>    
                        <i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">shopping_cart</i></a>
                    </div>
                </div>
                <!--/row-->
                
            </div>
            <!--container-->
        </div>

        <nav aria-label="breadcrumb" >
            <ol class="breadcrumb" style="margin:0px">
                <li class="breadcrumb-item" aria-current="page">Account</li>
                <li class="breadcrumb-item active" aria-current="page">Add Address</li>
            </ol>
        </nav>
    
        
    </header>

    
    <div class="container form-container">
        <div class = "form-header pt-3">
            <h5>Add Address</h5>
        </div>
        <form class = "form-body" action = "./AddAddress" method = "POST">
            <div class="form-group">
                <label for="mobilenumber">Mobile Number<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                <input type="text" class="form-control" id="mobilenumber" name="mobilenumber" maxlength="10" placeholder="Mobile Number">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="housenobuildingname">House No. / Building Name<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control" id = "housenobuildingname" name="housenobuildingname" placeholder="House No. / Building Name">
                </div>
                <div class="form-group col-md-6">
                    <label for="roadnameareacolony">Road Name, Area, Colony<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control" id = "roadnameareacolony" name="roadnameareacolony" placeholder="Road Name, Area, Colony">
                </div>
                <div class="form-group col-md-6">
                    <label for="state">State<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <select id="state" name ="state"  class="form-control" style = "font-size: 12px;">
                    	<option selected>Choose State</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="city">City<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <select name ="city" id ="city" class="form-control" style = "font-size: 12px;">
                    	<option selected>Choose City</option>
                    </select>
                </div>
                <div class="form-group col-md-6">
                    <label for="landmark">Lankmark<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control" id = "landmark" name="landmark" placeholder="Lankmark">
                </div>
                <div class="form-group col-md-6">
                    <label for="pincode">Pincode<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> 
                    <input type="text" class="form-control" id = "pincode" name="pincode" maxlength="6" placeholder="Pincode">
                </div>
            </div>          
            <div class = "text-center">
                <!-- Button trigger modal -->
                <button type="submit" class="btn btn-primary form-control" id = "onsubmitbutton" style = "font-size: 12px;font-weight: bolder;" >Submit</button>
            </div>
            
            
        </form>
        <div class = "text-center mt-3">
			<b><span id = "errorspan" style = "font-size:small;font-weight:bolder;color:red"></span></b>
		</div>
        <br>
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
    
    <script>    
	    var contactexp = /^\d{10}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
		var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
		var numberexp = /\d+/g;
	
		$('#onsubmitbutton').click(function() {  
			
			if($('#mobilenumber').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Mobile Number";
				return false;
			}
			else if(!(contactexp.test($('#mobilenumber').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Correct Mobile Number";
				return false;
			}
			else if($('#housenobuildingname').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter House No. / Building Name";
				return false;
			}
			else if($('#roadnameareacolony').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Road Name, Area, Colony";
				return false;
			}
			else if($('#state').val() == '-1'){
				document.getElementById('errorspan').innerHTML = "Select State";
				return false;
			}
			else if($('#city').val() == ''){
				document.getElementById('errorspan').innerHTML = "Select City";
				return false;
			}
			else if($('#landmark').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Landmark";
				return false;
			}
			else if($('#pincode').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Pincode";
				return false;
			}
			else if(!(zipexp.test($('#pincode').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Correct Pincode";
				return false;
			}
			else{
				document.getElementById('errorspan').innerHTML = "";
				return true;
			}
			
			return true;
		});	
		
	</script>
    <script type="text/javascript">
    	populateStates("state", "city");
	</script>
    <script>
        function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
        }
        
        
        $( function() {
          var availableTags = [
            "ActionScript",
            "AppleScript",
            "Asp",
            "BASIC",
            "C",
            "C++",
            "Clojure",
            "COBOL",
            "ColdFusion",
            "Erlang",
            "Fortran",
            "Groovy",
            "Haskell",
            "Java",
            "JavaScript",
            "Lisp",
            "Perl",
            "PHP",
            "Python",
            "Ruby",
            "Scala",
            "Scheme"
          ];
          $( "#tags" ).autocomplete({
            source: availableTags,
            autoFocus:true
          });
        } );

        
        </script>
</body>
</html>