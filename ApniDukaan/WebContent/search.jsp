<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
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
    <title>ApniDukaan :: Search</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/search.css">
	<link rel="stylesheet" href="assets/css/products.css">
    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
</head>
<style> 
/* .wrapper { margin: 150px auto; } */
.scrollable-menu {
    height: auto;
    max-height: 300px;
    width: 250px;
    overflow-x: hidden;
}

.btn-group ul li{
	font-size:11px;
	font-weight:bolder;
	padding:8px;
	color:black;
}
.btn-group ul li:hover{
	background-color:#f8f9fa;
	color:black;
}

.btn-group ul li a{
	color:black;
}
.btn-group ul li a:hover{
	color:black;
}

@media screen and (max-width:600px) {
  #AdvancedSearch { display:none; }
  .carousel-indicators{ display:none; }
}

.sticky {
  position: fixed;
  top: 0px;
  right: 0px;
  background: #002060;
  z-index: 1;
  padding:10px 10px;
  display: none;
}

.visible {
display: block;
}

.page-pagination{
    font-size: medium;
    text-align: center;
    justify-content: center;
    margin:10px 0px 30px 0px;
}


  
.previouspage, .nextpage{
    background-color: #8ab1ff;
    color: black;
    padding:15px;
    font-size:12px;
    font-weight: bolder;
    border-radius: 15px;
}

.previouspage:hover , .nextpage:hover {
    background-color: #002060;
    color: white;
    padding:15px;
    font-size:12px;
    font-weight: bolder;
    border-radius: 15px;
}

.pgno{
    background-color: #8ab1ff;
    color: #002060;
    padding:15px;
    font-size:12px;
    font-weight: bolder;
    border-radius: 15px;
}

.pgno:hover {
    background-color: #002060;
    color: white;
    padding:15px;
    font-size:12px;
    font-weight: bolder;
    border-radius: 15px;
}

</style>
<body >  
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	

	InetAddress IP=InetAddress.getLocalHost();
	
	String spageid=request.getParameter("page");
	String category=request.getParameter("category");
	String search=request.getParameter("q");
//	System.out.println(spageid);
	
	int pageid=Integer.parseInt(spageid);	//	pageid = 3  
	int pgid = pageid;						//	pgid = 3
	int total=8;  							//  total = 8
	if(pageid==1){}  	
	else{  
	    pageid=pageid-1;  					//	pageid = 2
	    pageid=pageid*total+1;  			//	pageid = 17
	}  
	int end = total + pageid;				//	start = 17 end = 25
	
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
                    <div class="col-md-12 pt-2">
                        <form action="Search" method="GET" style = "z-index:0" >
                            <div class="input-group">
                            	<input type = "hidden" value = "1" name = "page">
                            	<div class="input-group-append">
                            		<div class="btn-group">
						                <button type="button" class="btn btn-default dropdown-toggle" id = "AdvancedSearch" data-toggle="dropdown"  style = "width:auto;background-color:lightgrey;border-radius:5px 0px 0px 5px;font-size:12px;font-weight:bolder;z-index:0;"><span class="selection">All</span><span class="caret"></span></button>
						                <ul class="dropdown-menu scrollable-menu"  id="dropdown" style = "font-size:12px;color:black;" role="menu">
						                    <li><a href="javascript:void(0)">All</a></li>
						                    <li><a href="javascript:void(0)">Fashion</a></li>                     
	                                        <li><a href="javascript:void(0)">Electronics</a></li>                  
	                                        <li><a href="javascript:void(0)">Home Appliances</a></li>
	                                        <li><a href="javascript:void(0)">Home & Kitchen</a></li>
	                                        <li><a href="javascript:void(0)">Furniture</a></li>                  
	                                        <li><a href="javascript:void(0)">Grocery</a></li>                          
	                                        <li><a href="javascript:void(0)">Mobile's</a></li>                                
	                                        <li><a href="javascript:void(0)">Women's Beauty</a></li>                           
	                                        <li><a href="javascript:void(0)">Men's Footwear</a></li>
	                                        <li><a href="javascript:void(0)">Baby & Kids</a></li>                           
	                                        <li><a href="javascript:void(0)">Health Care Essentials</a></li>
	                                        <li><a href="javascript:void(0)">Sports, Fitness & Outdoors</a></li>
						                </ul>
						            </div> 
									<input type = "hidden" name = "category" class = "searchcategory" value = "All">
 				            		
								</div>
                                <input type="text" class="form-control search-box-pre" id = "search1" placeholder="Search..." name = "q" aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                	<button type = "submit" class = "input-group-text search-box-post bg-warning" id = "searchsubmit" style = "height:40px;width:45px;" ><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;" >search</i></button>
                                </div>
                              </div>
                        
                    </div>
                    <div class="col-md-12 sticky">
                        
                            <div class="input-group">
                            	<div class="input-group-append">
                            		<div class="btn-group">
                            			<button type="button" class="btn btn-default dropdown-toggle" id = "AdvancedSearch" data-toggle="dropdown"  style = "width:auto;background-color:lightgrey;border-radius:5px 0px 0px 5px;font-size:12px;font-weight:bolder;"><span class="selection">All</span><span class="caret"></span></button>
						                <ul class="dropdown-menu scrollable-menu"  id="dropdown" style = "font-size:12px;color:black;" role="menu">
						                   <li><a href="javascript:void(0)">All</a></li>
						                    <li><a href="javascript:void(0)">Fashion</a></li>                     
	                                        <li><a href="javascript:void(0)">Electronics</a></li>                  
	                                        <li><a href="javascript:void(0)">Home Appliances</a></li>
	                                        <li><a href="javascript:void(0)">Home & Kitchen</a></li>
	                                        <li><a href="javascript:void(0)">Furniture</a></li>                  
	                                        <li><a href="javascript:void(0)">Grocery</a></li>                          
	                                        <li><a href="javascript:void(0)">Mobile's</a></li>                                
	                                        <li><a href="javascript:void(0)">Women's Beauty</a></li>                           
	                                        <li><a href="javascript:void(0)">Men's Footwear</a></li>
	                                        <li><a href="javascript:void(0)">Baby & Kids</a></li>                           
	                                        <li><a href="javascript:void(0)">Health Care Essentials</a></li>
	                                        <li><a href="javascript:void(0)">Sports, Fitness & Outdoors</a></li>
						                </ul>
						            </div> 
								</div>
                                <input type="text" class="form-control search-box-pre" id = "search2" placeholder="Search..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                                <div class="input-group-append">
                                	<button type = "submit" class = "input-group-text search-box-post bg-warning" id = "onsearchbutton" style = "height:40px;width:45px;"><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">search</i></button>
                                </div>
                              </div>
                        </form>
                    </div>
                </div>
                <!--/row-->
            </div>
            <!--container-->
        </div>

        <div id="demo" class="carousel slide" data-ride="carousel" style="z-index:0;" >
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
              <li class="breadcrumb-item active" aria-current="page">Search</li>
            </ol>
        </nav>
        
        
    </header>
    
    <div class="container-fluid pt-2" style = "padding:25px;">
		<div class="row">
<%
List<ProductBean> list = ProductDao.getProductsByCategoryStartEnd(category, pageid, end, search);
for(ProductBean product: list) 
{
%>		
			<div class = "col-md-3 p-2">
				<div class = "card" style="background-color: white; border-radius: 18px;padding:0px;">
					<div class = "card-image text-center p-2" style ="height:307.25px;width:307.25px;margin-left:auto;margin-right:auto;display:block">
						<img class="card-img-top" src="http://<%=IP.getHostAddress() %>/uploads/<%= product.getProdimg1() %>" alt="Product Image" style="border-radius: 18px;height:100%;width:100%;object-fit:contain;margin-left: auto;margin-right: auto;display: block;" onContextMenu="return false;">
							...
					</div>
					<div class="card-body" style="border-radius: 18px;">
						<p class="card-text text-left">
							<b><%= product.getProductname().length() > 40? product.getProductname().substring(0, 40)+"...": product.getProductname() %></b>
						</p>
						<p class="card-text text-right inr-price">Rs. <%= product.getProductprice() %></p>
					</div>
					<div class="btn-group" role="group" aria-label="Basic example">
						<a class="btn btn-warning" data-toggle="tooltip"
							data-placement="top" title="Add To Cart"
							style="border-radius: 0px 0px 0px 18px;"
							onclick="location.href='AddProductToCart?key=<%= product.getPid() %>'"><i
							class="material-icons nav__icon pt-2" style="color: white;">add_shopping_cart</i></a>
						<a class="btn btn-danger" data-toggle="tooltip"
							data-placement="top" title="Add To WishList"
							onclick="location.href='AddProductToWishList?key=<%= product.getWid() %>'"><i
							class="material-icons nav__icon pt-2" style="color: white;">favorite_border</i></a>
						<a class="btn btn-success pt-3" data-toggle="tooltip"
							data-placement="top" title="Buy Product"
							style="border-radius: 0px 0px 18px 0px; font-size: 13px; font-weight: bolder;"
							onclick="location.href='ViewProduct?key=<%= product.getPid() %>'">Buy</a>
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
        <b style = "font-size: 14px;">0 Products Available</b>
    </div>
<%
	}
	else
	{
%> 
	<br>         
    <div class="page-pagination">
<%
	int totalproduct = ProductDao.getProductCountByCategory(category, search);
%>
      <a href="Search?page=1&category=<%= category %>&q=<%=search %>" class="previouspage">&laquo; First Page</a>  
<%
	int pagenos = totalproduct/total;
	float pgnon = Float.parseFloat(String.valueOf(totalproduct))/Float.parseFloat(String.valueOf(total));
	pagenos =  pgnon > pagenos?pagenos+1:pagenos;
//	System.out.println(pgnon + " :: " + pagenos + " :: " + totalproduct + " :: " + total);
	for(int i = 1; i <= pagenos; i++)
	{	
%>     
		
<%
//		System.out.println(pgid+"=="+i);
		if(pgid==i)
		{
%>
			<a href="Search?page=<%= i %>&category=<%= category %>&q=<%=search %>" style = "background-color: #002060; color: white;padding:15px;font-size:12px;font-weight: bolder;border-radius: 15px;"><%=i %></a>   
<%
		} 
		else
		{
%>         
        	<a href="Search?page=<%= i %>&category=<%= category %>&q=<%=search %>" class ="pgno"><%=i %></a>
<%
		}
	}
	
%>
	<a href="Search?page=<%= pagenos %>&category=<%= category %>&q=<%=search %>" class="nextpage">Last Page &raquo;</a>      
    </div> 
<%
	}
%>
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
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/main.js"></script>
    <script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script>/*
    $('#returnperiod').attr('readonly', true);
    $(document).ready(function(){
        $('#allowreturn').click(function(){
            if($(this).prop("checked") == true){
            	$('#returnperiod').attr('readonly', false);
            }
            else if($(this).prop("checked") == false){
            	$('#returnperiod').attr('readonly', true);
            }
        });
    });*/
    
	//  var contactexp = /^\d{10}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	//	var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
	//	var numberexp = /\d+/g;
	
		$('#search2').change(function() {
			if($('#search2').val() != ''){
				$('#search1').val($('#search2').val());
				return true;
			} 
			
		});	
		
	</script>
    <script>
    
    
    $(document).ready(function() {
        $('.dropdown-toggle').dropdown()
    });
    
    $(function () {
        $("#dropdown li").click(function () {
        	$("#AdvancedSearch .selection").text($(this).text());
        	$(".searchcategory").val($(this).text());
        });
    });
    
    $(document).scroll(function () {

 		var top = 165;
	 	if ($(window).scrollTop() >= top) {
		    $('.sticky').addClass('visible');
	
		} else {
		    $('.sticky').removeClass('visible');
		}
    });
    </script>
    <script type="text/javascript">
        function viewproduct(){
            window.location.href = "./ViewProduct";
        }
        function addtocartproduct(){
            window.location.href = "./AddToCart";
        }
 		function addwishlist(){
            window.location.href = "./AddWishList";
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

        
        var input = document.getElementById("#search1");
        input.addEventListener("keyup", function(event) {
            if (event.keyCode === 13) {
                event.preventDefault();
                document.getElementById("#searchsubmit").click();
            }
        });
        
        </script>
</body>
</html>