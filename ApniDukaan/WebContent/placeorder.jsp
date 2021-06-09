<%@page import="com.apnidukaan.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@page import="com.apnidukaan.dao.UserDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
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
    <title>ApniDukaan :: Place Order</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/viewproducts.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
</head>
<style>
.btn{
    padding:10px 10px;
    border-radius: 0px;
    box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);
    font-weight: bolder;
}

.thumbnail-image{
	height:250px;
	width:250px; 
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
	
	ProductBean pb = ProductDao.getProductPlaceOrderRecordById(key);
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
                    <form action="#" ui-widget method="GET" >
                        <div class="input-group">
                            <input type="text" class="form-control search-box-pre" id="tags" placeholder="Search..." aria-label="Recipient's username" aria-describedby="basic-addon2">
                            <div class="input-group-append">
                                <span class="input-group-text search-box-post"><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">search</i></span>
                            </div>
                          </div>
                    </form>
                </div>
            </div>
                <!--/row-->
            </div>
            <!--container-->
        </div>

        <nav aria-label="breadcrumb" >
            <ol class="breadcrumb" style="margin:0px">
                <li class="breadcrumb-item" aria-current="page">Shop</li>
                <li class="breadcrumb-item active" aria-current="page">View Product</li>
            </ol>
        </nav>
    
        
    </header>



    <div class="productimage-slider" style = "background-color: white;padding: 25px;">
    <form method = "POST" action = "./PlaceOrder">
    	<input type = "hidden" name = "key" value = "<%= key%>">
      <div class="form-row">
        <div class="col-md-7">
        	<div class = "row">
        		<div class = "col-md-7 text-center">
        			<div style = "padding:5px;height:450px;width:450px;margin:0;">
        				<img src = "http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1() %>" style = "border-radius:18px;object-fit:scale-down;height:100%;width:100%;" alt = "Product Image"/>
        			</div>
        			
        		</div>
        		<div class = "col-md-5">
        			<div class = "mt-5">
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
			          <input type = "hidden" id = "price" value = "<%= pb.getProductprice() %>"><br>
			          <input type = "hidden" id = "qtyprice" name = "qtyprice" ><br> 
			          <b class="price">Rs. <span id = "spanprice"></span></b><br>
          			  <p class="delivery"></p>
          			  <label for = "quantity" style="font-size: medium;font-weight: bolder;">Qty: </label> <input type = "number"  min="1" value="1" name = "qty" id = "qty" style = "font-weight:bolder;width:60px;padding: 5px;"> 
			          <div class="policies">
			            <b>Prepaid Available</b>
			            <p><%= pb.getAllowreturn().equals("Allow Return") && pb.getReturnperiod().equals("0")? "Not Allowed Return" :pb.getAllowreturn() +" "+ pb.getReturnperiod() %></p>
			          </div>
        			</div>
        		</div>
        	</div>
        </div>
        <div class="col-md-5">
          <div class="checkout-container mt-5" style = "background-color:whitesmoke;padding:25px;border-radius:15px;">
          	<!-- <form method = "POST" action = "./PlaceOrder"> -->
          		
          	  	<div class = "placeorder-container">
	          		<div class="form-group">
			           	<label for="inputAddress">Select Payment Type</label>
			            <select name="paymentcategory" class="form-control" style = "font-size: 12px;">
			            	<option selected>Cash On Delivery</option>
			       <!--     <option>Online Payment</option> -->
			            </select>
			        </div>
			        <div class="form-group">
			            <label for="inputAddress">Place Order Address</label>
			            <select name="address" id = "address" class="form-control" style = "font-size: 12px;">
<%
	String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
//	System.out.println("User id :: "+userid);
	List<AddressBean> ab = AddressDao.getAllRecords(userid);
	
%>			 
			            	<option value = "-1" selected>Choose Address...</option>
<%
	for(AddressBean address: ab)
	{
%>			            	
							<option><%= address.getHousenobuildingname()+", "+ address.getRoadnameareacolony()+", "+ address.getLandmark() +", "+ address.getState()+", "+ address.getCity()+", "+ address.getPincode() %></option>
<%		
	}
%>			                
		                </select>
			        </div>
			        <div class="form-group">
			           	<label for="inputAddress">Your Contact Number</label>
			           	<input type="text" class="form-control" value = "<%= UserDao.getReceipantContactById(userid) %>" readonly>
			        </div>
	          	</div>
	          	<!-- <div style = "background-color:lightgreen;height:60px;border-radius:8px;padding:10px;color:green;font-weight:bolder">
	          		Write Note Here 
	          	</div> -->
	          	<div class="button-container mt-2">
			      <div class="btn-group text-center" role="group" aria-label="Basic example" style="width: 100%;">
			        <button type="submit" class="btn" style = "background-color:#002060;color:white;" id = "onsubmitbutton">Place Order</button>
			      </div>
			    </div>
		    	<div class = "text-center mt-3">
					<b><span id = "errorspan" style = "font-size:small;font-weight:bolder;color:red"></span></b>
				</div>
          </div>
        </div>
      </div>
      </form>	
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
    
    <script>
   	
   	$( document ).ready(function() {
   		var netprice = $('#qty').val() * $('#price').val(); 
   	   	$('#spanprice').html(netprice+".00");
   	 	$("#qtyprice").val(netprice+".00")
   	});
   	
   	$("#qty").change(function(){
   	 	var netprice = $('#qty').val() * $('#price').val(); 
   		$('#spanprice').html(netprice+".00");
   		$("#qtyprice").val(netprice+".00")
   		
   	});   	
   	</script>
   	
    <script>
   
	//  var contactexp = /^\d{10}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	//	var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
	//	var numberexp = /\d+/g;
	
		$('#onsubmitbutton').click(function() {
			
			if($('#address').val() == '-1'){
				document.getElementById('errorspan').innerHTML = "Select Address";
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