<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.apnidukaan.dao.TrackOrderDao"%>
<%@page import="com.apnidukaan.bean.TrackOrderBean"%>
<%@page import="java.util.List"%>
<%@page import="com.apnidukaan.bean.PurchaseOrderBean"%>
<%@page import="com.apnidukaan.dao.UserDao"%>
<%@page import="com.apnidukaan.bean.PlaceOrderBean"%>
<%@page import="com.apnidukaan.dao.PlaceOrderDao"%>
<%@page import="java.net.InetAddress"%>
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
	padding:10px;
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

	String key = request.getParameter("key") != null || request.getParameter("key") != ""
	? request.getParameter("key")
	: "undefined";
	key = key.isEmpty() ? "undefined" : key; 
	
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
                        <%
                        	String city = AddressDao.getCurrentLocationUsingEmailid(session.getAttribute("emailid").toString());
                        %>
                        <b style="padding-top: 0px;"><%= city.equals("undefined")?"Add Address":city %></b>
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
            <b style = "font-size: 13px;"><%= PlaceOrderDao.getShopNameByOrderId(key) %></b>
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
        	<b style = "font-weight:bolder">Track Order: </b>
<%
List<TrackOrderBean> list = TrackOrderDao.getTrackOrderByReferenceNo(TrackOrderDao.getReferenceNoById(key));

SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

%>	        
            <div class="row justify-content-center mt-5">
				    <div class="col-10">
<%
if(list.size() == 0)
{
%>
						<b>0 Results</b>
<%
}		
else if(list.size() == 1) 
{		
		
%>				    
				    	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>		            	
		            	
<%
}		
else if(list.size() == 2)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(1).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
		            	
<%
}		
else if(list.size() == 3)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(2).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
<%
}		
else if(list.size() == 4)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(3).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
		            	
<%
}		
else if(list.size() == 5)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(4).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
<%
}		
else if(list.size() == 6)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(5).getStatus() %></b><small><%= format.parse(list.get(5).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(5).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
<%
}		
else if(list.size() == 7)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(5).getStatus() %></b><small><%= format.parse(list.get(5).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">Ready To PickUp</b><small><%= format.parse(list.get(6).getDate_created()) %></small> 
		            	</p>
		            	<% if(list.get(6).getStatus().equals("Unsuccessfully Delivery Attempt")) {}
		            	else{
		            	%>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line-process"></span>
		            	</div>
		            	<%
		            	}
		            	%>
<%
}		
else if(list.size() == 8)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(5).getStatus() %></b><small><%= format.parse(list.get(5).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(6).getStatus() %></b><small><%= format.parse(list.get(6).getDate_created()) %></small> 
		            	</p>
<%
}		
else if(list.size() == 9)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(5).getStatus() %></b><small><%= format.parse(list.get(5).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(6).getStatus() %></b><small><%= format.parse(list.get(6).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text">PickUp</b><small><%= format.parse(list.get(7).getDate_created()) %></small> 
		            	</p>
<%
}		
else if(list.size() == 10)
{		
%>		            	
						<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(0).getStatus() %></b><small><%= format.parse(list.get(0).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(1).getStatus() %></b><small><%= format.parse(list.get(1).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(2).getStatus() %></b><small><%= format.parse(list.get(2).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(3).getStatus() %></b><small><%= format.parse(list.get(3).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(4).getStatus() %></b><small><%= format.parse(list.get(4).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(5).getStatus() %></b><small><%= format.parse(list.get(5).getDate_created()) %></small> 
		            	</p>
						<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(6).getStatus() %></b><small><%= format.parse(list.get(6).getDate_created()) %></small> 
		            	</p>
		            	<div class = "vertical text-center">
		            		<span class = "vertical-line"></span>
		            	</div>
		            	<p class="paragraph">
		            			<i class="bx bx-search trackorder-icon"></i>
		            			<b class = "trackorder-text"><%= list.get(7).getStatus() %></b><small><%= format.parse(list.get(7).getDate_created()) %></small> 
		            	</p>
<%
	}
%> 				    	
				    </div>
				</div>
           	
			
        </div>
        
        <div class="orderdetails-section">
            <p>Your Order
            <br />    
<%
	String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
	PurchaseOrderBean pob = PlaceOrderDao.getPurchaseOrderRecordByReceipantIdAndPid(userid, key);
%>
            <b style = "font-size: 13px;">Order ID : <%= pob.getReferenceno() %></b>
            </p> 
            <div class = "row orderdetails-bar">
                <div class = "col-3">
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
	PlaceOrderBean pob2 = PlaceOrderDao.getOrderDetailByUserIdAndOrderId(pob.getReferenceno(), key);
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