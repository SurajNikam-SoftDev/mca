<%@page import="com.apnidukaan.dao.ProductDao"%>
<%@page import="com.apnidukaan.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="java.net.InetAddress"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Wish List</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/products.css">

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

	List<ProductBean> list = ProductDao.getWishListProduct(session.getAttribute("emailid").toString());
	InetAddress IP=InetAddress.getLocalHost();
	
	
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
                <li class="breadcrumb-item active" aria-current="page">WishList</li>
            </ol>
        </nav>
    
        
    </header>

    <div class="pageheading text-center p-3" style = "background-color: white;">
        <b style = "font-size: 14px;">WishList</b>
    </div>
    
    <div class="container-fluid pt-2" style = "padding:25px;">
		<div class="row">
			
<%
	for(ProductBean product: list)
	{		
%>
			<div class="col-md-3" style="padding: 5px;">
				<div class="card product-card"
					style="background-color: white; border-radius: 18px;">
					<div class = "card-image text-center" style ="height:323.25px;width:323.25px;padding:15px;">
						<img class="card-img-top" src="http://<%=IP.getHostAddress() %>/uploads/<%= product.getProdimg1() %>"
						alt="Product Image" style="border-radius: 18px;height:100%;width:100%;object-fit:contain;margin-left: auto;margin-right: auto;display: block;"><!--  height= "323.25" width = "323.25" -->
					</div>
					
					<div class="card-body" style="border-radius: 18px;">

						<p class="card-text text-left">
							<b><%= product.getProductname().length() > 40? product.getProductname().substring(0, 40)+"...": product.getProductname() %></b>
						</p>
						<p class="card-text text-right inr-price">Rs. <%= product.getProductprice() %></p>
					</div>
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-warning"
							data-toggle="tooltip" data-placement="top" title="Add To Cart"
							style="border-radius: 0px 0px 0px 18px;"
							onclick="location.href='AddProductToCart?key=<%= product.getPid() %>'">
							<i class="material-icons nav__icon pt-2" style="color: white;">add_shopping_cart</i>
						</button>
						<button type="button" class="btn btn-danger" data-toggle="tooltip"
							data-placement="top" title="Romove From WishList"
							onclick="location.href='RemoveProductFromWishList?key=<%= product.getWid() %>'">
							<i class="material-icons nav__icon pt-2" style="color: white;">delete</i>
						</button>
						<button type="button" class="btn btn-success"
							data-toggle="tooltip" data-placement="top" title="Buy Product"
							style="border-radius: 0px 0px 18px 0px; font-size: 13px; font-weight: bolder;"
							onclick="location.href='ViewProduct?key=<%= product.getPid() %>'">Buy</button>
					</div>
				</div>
			</div>		
<%
	}	
%>     
		</div>
	</div>
<%
if(list.isEmpty())
	{
%> 
	
	<div class="pageheading text-center p-3" style = "background-color: lightgrey;">
        <b style = "font-size: 14px;">0 Products In WishList</b>
    </div>
<%
	}
%>  
    <br> 
     <!--   
    <div class="page-pagination">
        <a href="#" class="previous">&laquo; Previous</a>
        <a href="#" class="next">Next &raquo;</a>      
    </div> 
     -->   

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
            window.location.href = "index.jsp";
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