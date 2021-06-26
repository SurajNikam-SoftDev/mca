<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Grow Your Business</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/growyourbusiness.css">

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
                <li class="breadcrumb-item active" aria-current="page">Grow Your Business</li>
            </ol>
        </nav>
    
        <div class="pageheading text-center p-3" style = "background-color: white;">
            <b style = "font-size: 14px;">Grow Your Business</b>
        </div>
    </header>

    
    <div class="growyourbusiness-container mt-2">
        <div class = "description">
<b class = "question">1. Recapture Existing Customers  </b>
<p class = "answer">
Getting new customers isn't the only way to grow your business. Many times, the customers you already have are your best bet for increasing your sales, and studies have found that improving customer retention also improves the value of a company.1﻿
Customers who have already purchased from you once are more likely to do so again, especially if they have a positive customer service experience. Capture the contact information and shopping preferences of one-time customers. Then, use that information to set up marketing systems that will convert them into repeat customers.
Implementing a mix of strategies to both retain old customers and acquire new ones is likely to produce the best growth for most businesses.2﻿
</p>        

<b class = "question">2. Ask for Referrals  </b>
<p class = "answer">
 Of course, attracting new customers to your business is never a bad approach. One way to do that is to ask your current customers for referrals.
These customers are already your target market, which means that people in their social or work circles are likely to be your target market as well. This makes them a strong access point to new customers.3﻿
However, assuming that your customers are passing the word about your business isn’t going to increase your customer base. You have to actively seek referrals. Depending on the type and size of your business, you can:
</p>

<b class = "question">3. Ask satisfied customers if they know anyone else who would be interested in your products or services.</b>
<p class = "answer">
Incentivize referrals with a discount code.
Encourage customers to share and tag your brand on social media.4
</p>
 
﻿<b class = "question">4. Contain Your Costs</b>
<p class = "answer">
Increasing your bottom line is key to growing your business. If you expand your share of the market but continue to increase your costs, you won't actually have any money left to invest in your business or make a profit.
So while you're looking for ways to grow, pay close attention to the costs associated with running your business and getting your products or services to customers. Lowering these costs can be an effective way to give your business the cash flow it needs to grow and stabilize. There are two main approaches to cutting costs:
</p>

<b class = "question">5. Liquidating low-earning products or eliminating low-performing services</b>
<p class = "answer">
Improving your inventory turnover through new marketing and sales tactics
Be careful not to cut costs in a way that impacts your customer service or employee satisfaction. Happy customers and enthusiastic employees are both key drivers of business growth. Cutting costs in these areas will ultimately harm your business' ability to expand, even if they give you more cash flow in the short term.
</p>

<b class = "question">6. Extend Your Market Reach</b>
<p class = "answer">
There are several ways of growing your business by making your product or service available to a new pool of customers.

Open stores in new locations: New locations can also be virtual, such as a website with an online store. This allows you to put your product in front of new customers in a new market.
Target a new demographic: Identify other groups who could also use your product in similar ways to your initial target audience. Once you’ve identified a new market, you can advertise in media that targets that market or create custom marketing campaigns.
Encourage new uses for your product: Discovering and promoting new ways to use your products or services allows you to encourage existing customers to buy more. It can also help you attract new customers who might need your products for different reasons.
All of these approaches allow you to expand your share of the market. This not only increases sales, but it also makes your business model more stable. When you don't rely on just one type of target customer, you are more likely to survive changes to the market.
</p>
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
    <script src="https://cdn.datatables.net/1.10.4/js/jquery.dataTables.min.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    
    <script type="text/JavaScript">
        function  validation() {
            window.location.href = "Home";
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