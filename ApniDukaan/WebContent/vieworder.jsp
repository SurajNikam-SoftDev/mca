<%@page import="com.apnidukaan.bean.PlaceOrderBean"%>
<%@page import="com.apnidukaan.dao.UserDao"%>
<%@page import="com.apnidukaan.dao.PlaceOrderDao"%>
<%@page import="com.apnidukaan.bean.PurchaseOrderBean"%>
<%@page import="java.util.List"%>
<%@page import="com.apnidukaan.dao.ProductDao"%>
<%@page import="com.apnidukaan.bean.ProductBean"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: View Order</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/vieworder.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
</head>
<style>
.trackorder-container{
	background-color: white;
    margin-top:10px 0px 0px 0px;
    padding-top:10px;
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

	String key = request.getParameter("key") != null || request.getParameter("key") != ""
	? request.getParameter("key")
	: "undefined";
	key = key.isEmpty() ? "undefined" : key; 
	
	InetAddress IP=InetAddress.getLocalHost();
	
	//System.out.println("key :: "+key +", IP Address ::"+IP);
	
	ProductBean pb = ProductDao.getProductDetailsById(key);
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
              <li class="breadcrumb-item" aria-current="page">Order</li>
              <li class="breadcrumb-item active" aria-current="page">Order Details</li>
          </ol> 
      </nav>
      <div class = "col page-heading text-left" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
          <h6>Order Details</h6>     
      </div>
    
        
    </header>

    <div class="productimage-slider" style = "background-color: white;padding: 25px;">
      <div class="row">
        <div class="col-md-5">
          <div class="carousel-container position-relative">
  
            <!-- Sorry! Lightbox doesn't work - yet. -->
              
            <div id="myCarousel" class="carousel slide" data-ride="carousel" style = "height:400px;">
              <div class="carousel-inner justify-content-center" style = "height:300px;width:100%;">
                <%
                	if(pb.getProdimg1().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item active " style = ";height:100%;" data-slide-number="0">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg2().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="1">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg3().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="2">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg4().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="3">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg5().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="4">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg5() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg5() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg6().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="5">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg6() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg6() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg7().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="6">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg7() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg7() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg8().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="7">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg8() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg8() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg9().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="8">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg9() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg9() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                	if(pb.getProdimg10().equals("undefined")){}
                	else{
                %>
                <div class="carousel-item" style = ";height:100%;" data-slide-number="9">
                  <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg10() %>" class="mx-auto d-block" alt="..." data-remote="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg10() %>" style = "object-fit:contain" data-type="image" data-toggle="lightbox" data-gallery="example-gallery">
                </div>
                <%
                	}
                %>
              </div>
            </div>
            
            <!-- Carousel Navigation -->
            <div id="carousel-thumbs" class="carousel slide" data-ride="carousel" style = "padding:0">
              <div class="carousel-inner" style = ";height:100px;">
                <div class="carousel-item active" style = "">
                  <div class="row mx-0">
                  	<%
                		if(pb.getProdimg1().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-0" class="thumb col-4 col-sm-2 px-1 py-2 selected" data-target="#myCarousel" data-slide-to="0">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
                    	if(pb.getProdimg2().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-1" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="1">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
                		if(pb.getProdimg3().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-2" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="2">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-3" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="3">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg4() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-4" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="4">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-5" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="5">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	
                    %>
                  </div>
                </div>
                <div class="carousel-item">
                  <div class="row mx-0">
                  	<%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-6" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="6">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-7" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="7">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-8" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="8">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
	                	if(pb.getProdimg4().equals("undefined")){}
	                	else{
	                %>
                    <div id="carousel-selector-9" class="thumb col-4 col-sm-2 px-1 py-2" data-target="#myCarousel" data-slide-to="9">
                      <img src="http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" class="img-fluid" alt="...">
                    </div>
                    <%
	                	}
                    %>
                    <div class="col-2 px-1 py-2"></div>
                    <div class="col-2 px-1 py-2"></div>
                  </div>
                </div>
              </div>
              <a class="carousel-control-prev" href="#carousel-thumbs" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
              </a>
              <a class="carousel-control-next" href="#carousel-thumbs" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
              </a>
            </div>
            
          </div>
        </div>
        <div class="col-md-7">
          <br>
          <b class="product-title"><%= pb.getProductname() %></b>
          <p class="product-subtitle"><%= pb.getProductsubtitle().equals("undefined")?"<br>":pb.getProductsubtitle() %></p>
          <div class="rating-section">
              <span class="fa fa-star checked staricon"></span>
              <span class="fa fa-star checked staricon"></span>
              <span class="fa fa-star checked staricon"></span>
              <span class="fa fa-star staricon"></span>
              <span class="fa fa-star staricon"></span>
              3/5.
          </div>
          
          <p class="delivery"><%= pb.getCashondelivery() %></p>
          <div class="policies">
            <b>Prepaid Available</b>
            <p><%= pb.getAllowreturn().equals("Allow Return") && pb.getReturnperiod().equals("0")? "Not Allowed Return" :pb.getAllowreturn() +" "+ pb.getReturnperiod() %></p>
          </div>
          
        </div>
      </div>
      
    </div>
    

    
    
    <div class = "product-description-bar mt-2">
      <b>Product Description</b>
      <p class = "product-description pt-2">
        <%= pb.getDescription() %>
      </p>
    </div>
	
	<div class = "container-fluid trackorder-container  mt-2">
		<b style = "padding:10px;font-size:14px;font-weight:bolder">Track Order</b><br><br><br>
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
				<br>
           	</div>
           	
    

     <div class="orderdetails-section">
        <p>Your Order
        <br />  
<%
	String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
	PurchaseOrderBean pob = PlaceOrderDao.getPurchaseOrderRecordByUserIdAndPid(userid, key);
%>          
        <b style = "font-size: 13px;">Order ID : <%= pob.getReferenceno() %></b>
        </p> 
        <div class = "row orderdetails-bar">
            <div class = "col-3 text-left " style = "display:block;margin-left: auto;margin-right: auto;">
                <img src = "http://<%=IP.getHostAddress() %>/uploads/<%= pob.getProdimg1() %>" class = "orderdetails-img" alt="Product Img"/>
            </div>
            <div class = "col-9 orderdetails-header" >
                <b class = "header-title"><%= pob.getOpstatus() %></b>
                <p class = "header-subtitle"><%= pob.getProducttitle() %></p>
                <p class = "price-title mt-0"><%= pob.getPaymenttype() %>: Rs. <%= pob.getPrice() %></p>
            </div>
        </div>
    </div>

    <div class="address-section">
        <div class = "address-bar">
<%
	PlaceOrderBean pob2 = PlaceOrderDao.getOrderDetailByUserIdAndPId( pob.getReferenceno(), key);
%>        
            <p>Delivery Address
                <br />    
                <b style = "font-size: 13px;"><%= pob2.getReceipantname() %></b>
                </p> 
                <address>
                    <%= pob2.getReceipantaddress() %>
                </address>
                <b>Ph. no.: <%= pob2.getReceipantcontact() %>.</b>
        </div>
        
    </div>
    

    <div class="container mt-5" >
        <p>Copyright @ 2021 All Rights Reserved. Terms of Use | Privacy Policy AND Website Design and Developed By <b style = "font-style:oblique;font-weight:bolder;">Suraj Nikam</b></p>
    </div>

    <div class = "back-to-top">
        <a href="" onclick="topFunction()" class = "back-to-top-button" id="myBtn" title="Go to top">Back To Top</a>
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
      $('#myCarousel').carousel({
        interval: false
      });
      $('#carousel-thumbs').carousel({
        interval: false
      });

      // handles the carousel thumbnails
      // https://stackoverflow.com/questions/25752187/bootstrap-carousel-with-thumbnails-multiple-carousel
      $('[id^=carousel-selector-]').click(function() {
        var id_selector = $(this).attr('id');
        var id = parseInt( id_selector.substr(id_selector.lastIndexOf('-') + 1) );
        $('#myCarousel').carousel(id);
      });
      // Only display 3 items in nav on mobile.
      if ($(window).width() < 575) {
        $('#carousel-thumbs .row div:nth-child(4)').each(function() {
          var rowBoundary = $(this);
          $('<div class="row mx-0">').insertAfter(rowBoundary.parent()).append(rowBoundary.nextAll().addBack());
        });
        $('#carousel-thumbs .carousel-item .row:nth-child(even)').each(function() {
          var boundary = $(this);
          $('<div class="carousel-item">').insertAfter(boundary.parent()).append(boundary.nextAll().addBack());
        });
      }
      // Hide slide arrows if too few items.
      if ($('#carousel-thumbs .carousel-item').length < 2) {
        $('#carousel-thumbs [class^=carousel-control-]').remove();
        $('.machine-carousel-container #carousel-thumbs').css('padding','0 5px');
      }
      // when the carousel slides, auto update
      $('#myCarousel').on('slide.bs.carousel', function(e) {
        var id = parseInt( $(e.relatedTarget).attr('data-slide-number') );
        $('[id^=carousel-selector-]').removeClass('selected');
        $('[id=carousel-selector-'+id+']').addClass('selected');
      });
      // when user swipes, go next or previous
      $('#myCarousel').swipe({
        fallbackToMouseEvents: true,
        swipeLeft: function(e) {
          $('#myCarousel').carousel('next');
        },
        swipeRight: function(e) {
          $('#myCarousel').carousel('prev');
        },
        allowPageScroll: 'vertical',
        preventDefaultEvents: false,
        threshold: 75
      });
      /*
      $(document).on('click', '[data-toggle="lightbox"]', function(event) {
        event.preventDefault();
        $(this).ekkoLightbox();
      });
      */

      $('#myCarousel .carousel-item img').on('click', function(e) {
        var src = $(e.target).attr('data-remote');
        if (src) $(this).ekkoLightbox();
      });
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