<%@page import="java.net.InetAddress"%>
<%@page import="com.apnidukaan.dao.ProductDao"%>
<%@page import="com.apnidukaan.bean.ProductBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Edit Product Image Upload</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/form.css">
	<link rel="stylesheet" href="assets/css/addproduct.css">
	
	
    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    
</head>
<style>
input[type=file]{
    font-size: 12px;    
}

.page{
	padding-top:25px;
}

.page-header{
	background-color: #002060;
	border-radius:15px 15px 0px 0px;
	color:white;
	font-size:large;
	padding:15px 0px;
	margin:0px;
}

.form-container{
	margin-top:0px;
	box-shadow: 3px 3px 3px 3px #888888;
	border-radius:15px;
}

.form-body{
	margin: 0px 15px;
}
</style>
<body >
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	
	
	HttpSession editsession =request.getSession(); 
	String key = session.getAttribute("EditProductKey").toString();
//	System.out.println("Edit Product Upload Image :: "+key);
	ProductBean pb = ProductDao.getAllPhotoById(key);
	InetAddress IP=InetAddress.getLocalHost();
%> 
	<div class = "container page">
		
	    <div class="form-container pt-0">
	        <div class = "page-header text-center">
	            ApniDukaan
	    	</div> 
	        <form class = "form-body" action = "./EditProductImageUpload" method = "POST" enctype = "multipart/form-data">
	        	<div class="row">
	                <div class = "notice-container" style = "margin:0px 15px 15px 15px;width:100%;" >
		                <div class="col-md-12">
		                	<h4 class="pt-2">Upload Product Images Process</h4>
		                	<hr>
		                    <p>1. Click On + Add Images Button.</p>
		                    <p>2. Upload Minimum One (1) Image</p>
		                    <p>3. Image : Height = 300 | Width = 300</p>
		                    <p>4. Image Size : 200KB </p>
		                    <p style = "color:red;">5. Re-Upload All Photos Of A Product Compulsory *</p>
		                    <div class = "text-center">
		                    	<p  style = "color:red;text-decoration:underline;">Your Not Upload Image In Above Process Then It Will Get Error's.</p>
		                    </div>
		                </div>
		            </div>
		            <div class="col-md-12">
	                	<label for="upload">Uploaded Images<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
					</div>
<%
					if(pb.getProdimg1() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg1().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg1();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "   http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg1().equals("undefined")?"assets/img/ErrorImg.png":pb.getProdimg1() %>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg2() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg2().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg2();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg2() %>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg3() != "undefined"){						
%>						<%
							String imgurl = pb.getProdimg3().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg3();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "http://<%=IP.getHostAddress() %>/uploads/<%= pb.getProdimg3() %>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg4() != "undefined"){
%>						
					<div class="col-md-2 text-center" style = "padding:15px;">
						<%
							String imgurl = pb.getProdimg4().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg4();
						%>
						<img src = "<%= imgurl %>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg5() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg5().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg5();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg6() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg6().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg6();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg7() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg7().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg7();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg8() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg8().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg8();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg9() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg9().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg9();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
<%
					if(pb.getProdimg10() != "undefined"){
%>						<%
							String imgurl = pb.getProdimg10().equals("undefined")?"assets/img/ErrorImg.png" : "http://"+IP.getHostAddress()+"/uploads/"+pb.getProdimg10();
						%>
					<div class="col-md-2 text-center" style = "padding:15px;">
						<img src = "<%= imgurl%>" height = "150" width = "150" style = "border:1px solid lightgrey;border-radius:8px;"/>
					</div>
<%
					}
%>
					<div class="col-md-12">
	                	<div class="row">
	                        <div class="form-group col-md-8">
	                            <label for="upload">Re-Upload All Images Compulsory<span style = "color:red;font-size:14px;font-weight:bolder;">*</span></label>
	                        </div>
	                        <div class="form-group col-md-4">
	                            <div class = "text-right" style = "">
			                  		<button type="button" name="add" id="add" class="btn btn-success" style = "float:right;font-size:11px;">+ Add Image</button>
			              		</div>
	                        </div>
	                    </div>
					  
					</div>
					
					<div class="col-md-12 horizontal-scrollable">
	                  
					  <table class="table table-bordered">
							<thead class="text-center">
								<tr>
									<th>PHOTO</th>
									<th>VIEW PHOTO</th>
									<th>ACTION</th>
								</tr>
							</thead>
							<tbody id="dynamic_field" class="text-center">
							</tbody>
						</table>
					</div>
	            </div>
	            
	            <div class = "text-center">
	                <!-- Button trigger modal -->
	                <button type="submit" class="btn btn-primary form-control" id = "onsubmitbutton" style = "font-size: 12px;font-weight: bolder;" >Submit</button>
	            </div>
	            <br>
	        </form>
	        <div class = "text-center mt-3">
				<b><span id = "errorspan" style = "font-size:small;font-weight:bolder;color:red"></span></b>
			</div>
	        
	    </div>
	
	</div>
	<br><br><br><br>
	

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
    });
    
	//  var contactexp = /^\d{10}$/;
	//	var emailexp = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
	//	var zipexp = /^\d{6}$/;
	//	var letterexp = /^[A-Za-z]+$/;
		var numberexp = /\d+/g;
	
		$('#onsubmitbutton').click(function() {
			
			var uploadlen = $('#dynamic_field tr').length;
			
			if(uploadlen < 1){
				document.getElementById('errorspan').innerHTML = "Upload Minimum 1 Image Click On (+ Add Image) Button";
				return false;
			}
			else if($('#files').val() == ''){
				document.getElementById('errorspan').innerHTML = "Select Image";
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
        function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
     </script>
        
        <script type="text/javascript">
				
		/////////////////////////////ADD TABLE ROW CODE///////////////////////////////////
				
		$(document).ready(function(){
			var i=1;  
		     	$('#add').click(function(){  
					
		     		if(i < 10)
		           	{
		        	   var blahid = "'blah"+i+"'";
		        	   $('#dynamic_field').append('<tr id="row'+i+'"><td class = "align-self-center"> <input type="file" name="files[]" id="files" class="form-control files " onchange="document.getElementById('+blahid+').src = window.URL.createObjectURL(this.files[0])"> </td><td><img src = "assets/img/ErrorImg.png" id=blah'+i+' height = "150" width="150"> </td><td><button type="button" name="remove" id='+i+' class="btn btn-danger btn_remove">x</button></td></tr>');
		        	   i++;
		           	}
		           	else{
		        	   alert("Upload Ten Image's Only");
		           	} 
		            
		           
				});
		        	  
		/////////////////////////////REMOVE TABLE ROW CODE///////////////////////////////////
		$(document).on('click', '.btn_remove', function(){  
			var button_id = $(this).attr("id"); 
			
					if(i >2){
						$('#row'+button_id+'').remove();
						i--;
					}
					else{
						alert("Upload Minimum 1 Product Images");
					}
				
			     
			    });
		      	       
		});
			
			 
			
		var fl = document.getElementById('files');
		
		fl.onchange = function(e){ 
		var ext = this.value.match(/\.(.+)$/)[1];
			switch(ext)
			{
				case 'jpg':
				case 'png':
				     //alert('allowed');
				     break;
				default:
				     alert('not allowed');
				     this.value='';
			}
		}
			 
		</script>
		
		
</body>
</html>