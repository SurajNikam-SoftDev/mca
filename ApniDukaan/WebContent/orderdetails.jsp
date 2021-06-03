<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Order Details</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/orderdetails.css">

    <!-- jquery-ui CSS -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    
</head>
<style>

.tracking-section{
	padding:25px;
	margin-top:15px;
	background-color: white;
}

.paragraph{
	font-weight:bolder;
	border:1px solid grey;
	color:black;
	padding:15px 15px;
	border-radius:15px;
	font-size:11px;
	margin-top:-7px;
}

.trackorder-icon{
	font-weight:bolder;
	background-color:#007bff;
	color:white;
	padding:8px;
	border-radius:50%;
	
}

.paragraph small{
	float:right;
	color:grey;
	font-size:x-small;
}

.trackorder-text{
	padding-left:5px; 
}

.vertical{
	margin-top:-17px;	
}

.vertical-line{
	border-left: 4px solid grey;
  	height: 50px;
  	display:inline-block;
}

.vertical-line-process{
	border-left: 4px dashed grey;
  	height: 70px;
  	display:inline-block;
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
                <li class="breadcrumb-item" aria-current="page">Purchase Order</li>
                <li class="breadcrumb-item active" aria-current="page">Order Details</li>
            </ol>
        </nav>
        <div class = "col page-heading text-left" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
            <h6>Order Details</h6>     
        </div>
        
    </header>

    
    <div class="order-container">
        <div class="shop-section">
            <p>Sold By :
            <br />    
            <b style = "font-size: 13px;">Shop Name</b>
            </p> 
        </div>

        <div class="rating-section">
            <b>Shop Ratings : </b>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star staricon"></span>
            <span class="fa fa-star staricon"></span>
            3/5.
        </div>

        <div class="tracking-section">
            <div class="row justify-content-center">
				    <div class="col-10">
				    	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Item accepted by Courier</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Collected</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Shipped</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">In-Transit</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line" style = "height:100px;"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Arrived At Destination</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Out For Delivery</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Ready To PickUp</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Delivered</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		   
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">PickUp</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Unsuccessfully Delivery Arrived</b><small>Nov 27, 2020 02:06 PM</small> 
		            	</p>
				    </div>
				</div>
             
        </div>
        
        <div class="orderdetails-section">
            <p>Your Order
            <br />    
            <b style = "font-size: 13px;">Order ID : 1646156-16545526-1641546</b>
            </p> 
            <div class = "row orderdetails-bar">
                <div class = "col-3">
                    <img src = "assets/img/2.jpg" class = "orderdetails-img" alt="Product Img"/>
                </div>
                <div class = "col-9 orderdetails-header" >
                    <b class = "header-title">Delivered</b>
                    <p class = "header-subtitle">Product Title and Subtitle</p>
                    <p class = "price-title mt-0">Cash On Delivery: Rs. 650.00 </p>
                </div>
            </div>
        </div>

        <div class="address-section">
            <div class = "address-bar">
                <p>Delivery Address
                    <br />    
                    <b style = "font-size: 13px;">Customer Name</b>
                    </p> 
                    <address>
                        Sr no 130, Dandekar Bridge, Pune - 30<br>
                        IND
                    </address>
                    <b>Ph. no.: 9898989898.</b>
            </div>
            
        </div>
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
    
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
</body>
</html>