<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.UserDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@page import="com.apnidukaan.bean.AddressBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: My Address</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/myaddress.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

    
</head>
<style>
    
.card{
	border-radius: 18px;
}

.deletebutton{
	border-radius: 0px 0px 0px 18px;
}

.editbutton{
	border-radius: 0px 0px 18px 0px;
} 

.card-header{
	padding:15px 0px;
	font-size:medium;
	font-weight:bolder;
}
    
</style>
<body >
<%
	if(session.getAttribute("emailid")==null)
	{
		response.sendRedirect("./LogIn");
	}	

	HttpSession session2=request.getSession(false); 
	String emailid = session.getAttribute("emailid").toString();
	
	String userid = UserDao.getUserIdByEmail(emailid);
	System.out.println("User id :: "+userid);
	List<AddressBean> lab = AddressDao.getAllRecords(userid);
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
                <li class="breadcrumb-item" aria-current="page">Account</li>
                <li class="breadcrumb-item active" aria-current="page">My Address</li>
            </ol>
        </nav>
    
        <div class = "col page-heading" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
            <div class = "row">
                <div class="col">
                    <h6>My Address</h6>
                </div>
                <div class="col text-right">
                    <a href="javascript:void(0)" onclick="location.href='AddAddress'" class = "addproductbutton" style = "text-decoration: none;"> + Add New Address</a> 
                </div>
            </div>   
        </div>
        
    </header>

    <div class="container-fluid pt-3">
        <div class="row">
<%
	int cnt = 1;
	for(AddressBean address: lab)
	{
%>        
        
            <div class="col-md-4 pt-3">
                <div class="card ">
                    <div class="card-header text-center">
                        Address <%= cnt++ %>
                    </div>
                    <div class="card-body">
                        <b><%= UserDao.getUserNameByEmail(emailid) %></b>
                        <address>
                           	<%= address.getMobilenumber() %>.<br>
                           	<%= address.getHousenobuildingname() %>,<br>
                           	<%= address.getRoadnameareacolony() %>,<br>
                           	<%= address.getLandmark() %>,<br>
                           	<%= address.getState() %>, <%= address.getCity() %> - <%= address.getPincode() %>.<br>
                        </address>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <a href="javascript:void(0)" onclick="location.href='DeleteAddress?key=<%= address.getAid() %>'" class="btn btn-danger deletebutton"  data-toggle="tooltip" data-placement="top" title="Delete Address" ><i class="material-icons nav__icon pt-2" style ="color:white;">delete</i></a>
                        <a href="javascript:void(0)" onclick="location.href='EditAddress?key=<%= address.getAid() %>'" class="btn btn-success editbutton"  data-toggle="tooltip" data-placement="top" title="Edit Address" ><i class="material-icons nav__icon pt-2" style ="color:white;">draw</i></a>
                    </div>
                </div>   
            </div>
<%
	}
%>        
    	</div>
    </div>
<%
if(lab.isEmpty())
	{
%> 
	
	<div class="pageheading text-center p-3 mt-1" style = "background-color: lightgrey;">
        <b style = "font-size: 14px;">0 Address</b>
    </div>
<%
	}
%>      

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