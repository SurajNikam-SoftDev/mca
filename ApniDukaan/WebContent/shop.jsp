<%@page import="java.net.InetAddress"%>
<%@page import="java.io.File"%>
<%@page import="com.apnidukaan.bean.ProductBean"%>
<%@page import="java.util.List"%>
<%@page import="com.apnidukaan.dao.ProductDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Shop</title>
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
<style>
.btn{
    border-radius: 0px;
}
</style>
<body >
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	

	List<ProductBean> list = ProductDao.getAllRecordsByEmailId(session.getAttribute("emailid").toString());
	InetAddress IP=InetAddress.getLocalHost();
//	System.out.println("IP of my system is := "+IP.getHostAddress());
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
                    <div class="col-md-12 pt-2">
                        <form action="MyProductSearch" method="GET" >
                            <div class="input-group">
                                <input type="text" class="form-control search-box-pre" id="tags" placeholder="Search..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                	<button type = "submit" class = "input-group-text search-box-post bg-warning" style = "height:40px;width:45px;"><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">search</i></button>
                                </div>
                              </div>
                        </form>
                    </div>
                </div>
                <!--/row-->
            </div>
            <!--container-->
        </div>

        <div id="demo" class="carousel slide" data-ride="carousel" style="z-index:0;">
            <ul class="carousel-indicators" >
              <li data-target="#demo" data-slide-to="0" class="active"></li>
              <li data-target="#demo" data-slide-to="1"></li>
              <li data-target="#demo" data-slide-to="2"></li>
            </ul>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img src="assets/img/2_1.jpg" alt="Los Angeles" width="1100" height="400">
                <div class="carousel-caption">
                  <!-- <h3>Los Angeles</h3>
                  <p>We had such a great time in LA!</p> -->
                </div>   
              </div>
              <div class="carousel-item">
                <img src="assets/img/2_2.jpg" alt="Chicago" width="1100" height="400">
                <div class="carousel-caption">
                  <!-- <h3>Chicago</h3>
                  <p>Thank you, Chicago!</p> -->
                </div>   
              </div>
              <div class="carousel-item">
                <img src="assets/img/2_3.jpg" alt="New York" width="1100" height="400">
                <div class="carousel-caption">
                  <!-- <h3>New York</h3>
                  <p>We love the Big Apple!</p> -->
                </div>   
              </div>
            </div>
            <a class="carousel-control-prev" href="#demo" data-slide="prev">
              <span class="carousel-control-prev-icon"></span>
            </a>
            <a class="carousel-control-next" href="#demo" data-slide="next">
              <span class="carousel-control-next-icon"></span>
            </a>
        </div>

        <nav aria-label="breadcrumb" >
            <ol class="breadcrumb" style="margin:0px">
              <li class="breadcrumb-item active" aria-current="page">Shop</li>
            </ol>
        </nav>
    
        <div class = "col page-heading" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
            <div class = "row">
                <div class="col">
                    <h6>My Products</h6>
                </div>
                <div class="col text-right">
                    <a href="javascript:void(0)" onclick="location.href='AddProduct'" class = "addproductbutton" style = "text-decoration: none;"> + Add Product</a> 
                </div>
            </div>   
        </div>
    </header>
    <div class="container-fluid pt-2" style = "padding:25px;">
		<div class="row">
			
<%
	for(ProductBean product: list)
	{		
%>
			<div class="col-md-3" style="padding: 5px;">
				<div class="card product-card"
					style="background-color: white; border-radius: 18px;">
					<div class = "card-image mx-auto" style ="height:323.25px;width:323.25px;padding:15px;">
						<img class="card-img-top" src="http://<%=IP.getHostAddress() %>/uploads/<%= product.getProdimg1() %>"
						alt="Product Image" style="border-radius: 18px;height:100%;width:100%;object-fit:contain;margin:0 auto;display: block;"><!--  height= "323.25" width = "323.25" -->
					</div>
					
					<div class="card-body" style="border-radius: 18px;">

						<p class="card-text text-left">
							<b><%= product.getProductname().length() > 40? product.getProductname().substring(0, 40)+"...": product.getProductname() %></b>
						</p>
						<p class="card-text text-right inr-price">Rs. <%= product.getProductprice() %></p>
					</div>
					<div class="btn-group" role="group" aria-label="Basic example">
						<button type="button" class="btn btn-danger"
							style="border-radius: 0px 0px 0px 18px;"
							onclick="location.href='DeleteProduct?key=<%= product.getPid() %>'">
							<i class="material-icons nav__icon pt-2" style="color: white;">delete</i>
						</button>
						<button type="button" class="btn btn-success"
							style="border-radius: 0px 0px 18px 0px;"
							onclick="location.href='EditProduct?key=<%= product.getPid() %>'">
							<i class="material-icons nav__icon pt-2" style="color: white;">draw</i>
						</button>
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
	
	<div class="pageheading text-center p-3 mt-1" style = "background-color: lightgrey;">
        <b style = "font-size: 14px;">0 Products In Your Shop</b>
    </div>
<%
	}
%>	
    <br> <!--    
    <div class="page-pagination">
        <a href="#" class="previous">&laquo; Previous</a>
        <a href="#" class="next">Next &raquo;</a>      
    </div>  -->



    <div class="container" >
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
    
    <script type="text/javascript">
        function editproduct(){
            window.location.href = "EditProduct";
        }
        function deleteproduct(){
            alert("delete product");
            window.location.href = "Shop";
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