<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Shop Settings</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/form.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    <script type = "text/javascript">
    	function validation(){
    		/*
    		var contactno = document.getElementById("contactno").value;
    		var emailid = document.getElementById("emailid").value;
    		var zipcode = document.getElementById("zipcode").value;
    		var name = document.getElementById("name").value;
			*/
    		alert();
    		var contactexp = /^\d{10}$/;
			var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
			var zipexp = /^\d{6}$/;
			var letterexp = /^[A-Za-z]+$/;	//	single word
            var letterspaceexp = /^[a-zA-Z\s]*$/g;	//	multiple words
			
			alert(document.form.ownername.value);
            if(document.form.ownername.value == '') 
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Your Name";  
    			return false;
    		}
            else if(!document.form.ownername.value.match(letterexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Characters Only";  
    			return false;
    		}
            else if(document.form.contactno.value == '')
    		{
    			document.getElementById("errorspan").innerHTML = "Select Contact Number";  
    			return false;
    		} 
    		else if(!document.form.contactno.value.match(contactexp))
    		{
    			document.getElementById("errorspan").innerHTML = "Enter Correct Contact Number";  
    			return false; 
    		}
    		else
    		{
    			document.getElementById("errorspan").innerHTML = "";
    			return false;
    		}
            
            return false

    	} 
    </script>
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
                <li class="breadcrumb-item active" aria-current="page">Shop Settings</li>
            </ol>
        </nav>
    
        
    </header>

    
    <div class="container form-container">
        <div class = "form-header pt-3">
            <h5>Shop Settings</h5>
        </div> <!-- action = "./ShopSettings"  method = "POST" -->
        <form class = "form-body" name = "form" >
            <div class="form-group">
                <label for="inputAddress">Shop Name</label>
                <input type="text" class="form-control" name="shopname" placeholder="Shop Name">
            </div>
            <div class="form-group">
                <label for="inputAddress">Your Name<span style = "color:red;font-size:10px;font-weight:bolder;">*</span></label>
                <input type="text" class="form-control" name="ownername" placeholder="Your Name">
            </div>
            <div class="form-row">
            	<div class="form-group col-md-6">
                    <label for="prepaidorderdiscount">Contact Number<span style = "color:red;font-size:10px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control" name="contactno" placeholder="Contact Number">
                </div>
                <div class="form-group col-md-6">
                    <label for="prepaidorderdiscount">Prepaid Order Discount</label>
                    <input type="text" class="form-control" name="prepaiddiscount" placeholder="Prepaid Order Discount">
                </div>
            </div>
            <div class="form-group">
                <label for="about">About</label>
                <br>
                <textarea style="width: 100%;font-size:12px;" class = "form-control" placeholder="Describe yourself here..." name = "about"></textarea>
            </div>            
            <div class = "text-center">
                <!-- Button trigger modal -->
                <button type="submit" class="btn btn-primary form-control"  style = "font-size: 12px;font-weight: bolder;" onclick = "return validation()">Submit</button>
                
               
            </div>
            
        </form>
        <div class = "text-center mt-3">
			<b><span id = "errorspan" style = "font-size:x-small;font-weight:bolder;color:red"></span></b>
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
    
    <script type="text/JavaScript">
        function  validation() {
            window.location.href = "account.jsp";
        }
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