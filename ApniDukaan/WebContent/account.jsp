<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Account</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/menucard.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
</head>
<style>
ul li{
	height:50px;
	font-size:small;
}
</style>
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
              <li class="breadcrumb-item active" aria-current="page">Account</li>
            </ol>
        </nav>
        <div class = "col page-heading" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
            <div class = "row">
                <div class="col">
                    <h6>Shop Name</h6>
                </div>
                <div class="col text-right">
                    <a href="javascript:void(0)" class = "addproductbutton" onclick="location.href='ViewShop'" style = "text-decoration: none;">VIEW SHOP</a>
                </div>
            </div>   
        </div>
    </header>
    
    
    <div class="account-container mt-2">
		<ul class="list-group">
			<a href="javascript:void(0)"
				onclick="location.href='ShopSettings'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Shop Settings</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='ShoppingCharges'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Shopping Charges</li></a>
			<a href="javascript:void(0)" onclick="location.href='HowToSell'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">How To Sell</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='GrowYourBusiness'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Grow Your Business</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='PurchaseOrder'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Purchase Order</li></a>
			<a href="javascript:void(0)" onclick="location.href='MyPayment'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">My Payment</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='WishList'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">WishList</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='BankDetail'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Bank Detail</li></a>
			<a href="javascript:void(0)" onclick="location.href='MyAddress'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">My Address</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='HelpFAQ'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Help & FAQ</li></a>
			<a href="javascript:void(0)"
				onclick="location.href='ContactUs'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Contact Us</li></a>
			<a href="javascript:void(0)" onclick="location.href='Setting'"
				style="color: black; text-decoration: none;"><li
				class="list-group-item">Setting</li></a>
		</ul>
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