<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@page import="com.apnidukaan.dao.ProductDao"%>
<%@page import="com.apnidukaan.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Edit Product</title>
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

	String key = request.getParameter("key") != null || request.getParameter("key") != ""
	? request.getParameter("key")
	: "undefined";
	key = key.isEmpty() ? "undefined" : key; 
	
//	System.out.println("key :: "+key);
	
	ProductBean pb = ProductDao.getAllRecordsById(key);
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
                <li class="breadcrumb-item" aria-current="page">Shop</li>
                <li class="breadcrumb-item active" aria-current="page">Edit Product</li>
            </ol>
        </nav>
    
        
    </header>

    
    <div class="container form-container">
        <div class = "form-header pt-3">
            <h5>Edit Product</h5>
        </div>
        <form class = "form-body" action = "./EditProduct" method = "POST">
        	<input type="hidden" name = "key" value = "<%= key %>">
            <div class="form-group"> 
                <label for="inputAddress">Product Name<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                <input type="text" class="form-control" id = "productname" name="productname" value = "<%= pb.getProductname() %>" placeholder="Product Name">
            </div>
            <div class="form-group">
                <label for="inputAddress">Product SubTitle</label>
                <input type="text" class="form-control" name="productsubtitle" value = "<%= pb.getProductsubtitle() %>" placeholder="Product SubTitle">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="productprice">Price (in Rs.)<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <input type="text" class="form-control" id = "productprice" name="productprice" value = "<%= pb.getProductprice() %>" placeholder="Product Price">
                </div>
                <div class="form-group col-md-6">
                    <label for="category">Category<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                    <select name="category" id = "category" class="form-control" style = "font-size: 12px;">
                    	<option value = "-1">Choose Category...</option>
                    	<option selected style = "background-color:grey;font-size:bolder;color:white;"><%= pb.getCategory() %></option>
                    	<option>Fashion</option>
						<option>Electronics</option>
						<option>Home Appliances</option>
						<option>Home & Kitchen</option>
						<option>Furniture</option>
						<option>Grocery</option>
						<option>Mobile's</option>
						<option>Women's Beauty</option>
						<option>Men's Footware</option>
						<option>Baby & Kids</option>
						<option>Health Care Essentials</option>
						<option>Sports, Fitness & Outdoors</option>
					</select>
                </div>
            </div>

            <hr>

            <div class = "form-row">
                <div class="col-10">
                    <p>Allow To Cash On Delivery</p>
                </div>
                <div class="col-2 text-right">
                
                    <input type = "checkbox" name = "cashondelivery" value = "Cash On Delivery" <%= pb.getCashondelivery().equals("Cash On Delivery")?"checked":"" %>>
                </div>
                <div class="col-10">
                    <p>Allow Return</p>
                </div>
                <div class="col-2 text-right">
                    <input type = "checkbox" name = "allowreturn" id = "allowreturn" value = "Allow Return" <%= pb.getAllowreturn().equals("Allow Return")?"checked":"" %>>
                </div>
                
            </div>
            <div class = "notice-container">
                <div class="col-md-12">
                    <p>Free Delivery for first 5 Orders.</p>
                    <p>Delivery Fee Rs.40</p>
                    <p>Best-in-class services from trusted courier partners</p>
                </div>
            </div>

            <hr>
            <div class = "form-header text-left">
                <b>Additional Options</b>
            </div>
            <br>
            <div class="row">
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col">
                            <label for="sizeheight">Height (In Inch)</label>
                            <input type="text" id = "height" class="form-control" name="height" value = "<%= pb.getHeight() %>"placeholder="Height">
                        </div>
                        <div class="form-group col">
                            <label for="sizewidth">Weight (In kg)<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                            <input type="text" id = "weight" class="form-control" name="weight" value = "<%= pb.getWeight() %>" placeholder="Weight">
                        </div>
                    </div> 
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col">
                            <label for="sizeheight">Width (In Inch)</label>
                            <input type="text" id = "width" class="form-control" name="width" value = "<%= pb.getWidth() %>" placeholder="Width">
                        </div>
                        <div class="form-group col">
                            <label for="sizewidth">Length (In Inch)</label>
                            <input type="text" id = "length" class="form-control" name="length" value = "<%= pb.getLength() %>" placeholder="Length">
                        </div>
                    </div>
                </div>
				<div class="col-md-6">
					<div class = "form-group">
						<label for="stock">Total Stock<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> 
						<input type="text" id = "stock" class="form-control" name="stock" value = "<%= pb.getStock() %>" placeholder="Total Stock">
					</div>
				</div>
				<div class="col-md-6">
					<div class = "form-group">
						<label for="returnperiod">Return Period (In Day)<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label> 
						<input type="text" id = "returnperiod" class="form-control" name="returnperiod" value = "<%= pb.getReturnperiod() %>" placeholder="Return Period">
					</div>
				</div>
				<div class="col-md-12">
                    <div class="form-group">
                        <label for="description">Description<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
                        <br>
                        <textarea style="width: 100%;height:500px;"  name = "description" class = "form-control" maxlength="5000" id="message"><%= pb.getDescription() %></textarea>
                        <div id="counter" style = "float:right;margin-top:5px;"></div>
                    </div>
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
    
    $(document).ready(function(){
        $('#allowreturn').click(function(){
            if($(this).prop("checked") == true){
            	$('#returnperiod').attr('readonly', false);
            }
            else if($(this).prop("checked") == false){
            	$('#returnperiod').attr('readonly', true);
            	
            }
        });
    });
    
	//  var contactexp = /^\d{10}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	//	var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
		var numberexp = /\d+/g;
	
		$('#onsubmitbutton').click(function() {
			
			var uploadlen = $('#dynamic_field tr').length;
			
			if($('#productname').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Product Name";
				return false;
			}
			else if($('#productprice').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Product Price";
				return false;
			}
			else if(!(/\d+/g.test($('#productprice').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Product Price";
				return false;
			}
			else if($('#category').val() == -1){
				document.getElementById('errorspan').innerHTML = "Select Product Category";
				return false;
			}
			else if(!($('#height').val() == '') && !(/\d+/g.test($('#height').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Height";
				return false;
			}
			else if($('#weight').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Weight";
				return false;
			}
			else if(!($('#weight').val() == '') && !(/\d+/g.test($('#weight').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Weight";
				return false;
			}
			else if(!($('#width').val() == '') && !(/\d+/g.test($('#width').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Width";
				return false;
			}
			else if(!($('#length').val() == '') && !(/\d+/g.test($('#length').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Length";
				return false;
			}
			else if($('#stock').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Stock";
				return false;
			}
			else if(!(/\d+/g.test($('#stock').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Stock";
				return false;
			}
			else if(!($('#returnperiod').val() == '') && !(/\d+/g.test($('#returnperiod').val()))){
				document.getElementById('errorspan').innerHTML = "Enter Number Only In Return Period";
				return false;
			}
			else if($('#message').val() == ''){
				document.getElementById('errorspan').innerHTML = "Enter Description";
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
			const messageEle = document.getElementById('message');
			const counterEle = document.getElementById('counter');

			messageEle.addEventListener('input', function(e) {
				const target = e.target;

				// Get the `maxlength` attribute
				const maxLength = target.getAttribute('maxlength');
				
				// Count the current number of characters
				const currentLength = target.value.length;

				counterEle.innerHTML = currentLength+ "/" +maxLength;
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