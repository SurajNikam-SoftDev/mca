<%@page import="com.apnidukaan.dao.AddProductToCardDao"%>
<%@page import="com.apnidukaan.dao.AddressDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Help & FAQ</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/helpfaq.css">

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
                <li class="breadcrumb-item active" aria-current="page">Help & FAQ</li>
            </ol>
        </nav>
        
        <div class="pageheading text-center p-3" style = "background-color: white;">
            <b style = "font-size: 14px;">Help & FAQ</b>
        </div>
        
    </header>

    
    <div class="helpfaq-container mt-2">
        <div class = "description">
            <h6 class="text-center">For Buyers</h6>
            <b class = "question">1. How to contact the seller?  </b>
            <p class = "answer">
                To contact your seller, click on the chat button in your seller's profile and start chatting. 
            </p>
            
            <b class = "question">2. When will the order be dispatched? </b>
            <p class = "answer">
                Your order will be usually dispatched within 1 day after your seller has accepted your order. Chat with your seller to ask doubts regarding your order.
            </p>
            
            <b class = "question">3. How can I track my order? </b>
            <p class = "answer">
                Go to the 'Orders' tab, click on 'My Purchases' button on the top, select your order and click on 'Track' button to track your order.
            </p>
                        
            <b class = "question">4. What is the process of returns? </b>
            <p class = "answer">
                If you have turned on âReturnsâ for your product, you will receive a notification when the customer requests for a return through the ApniDukaan app. Note that return will be approved only after you click âAcceptâ for the return on the app. If you accept, our delivery partner will pickup the product from the customer and deliver it back to you. 

                You should directly send the money to the customer after you receive the product back.  Note that if your product does not use ApniDukaan shipping, you will need to handle the shipping of the return yourself.    
            </p>

            <b class = "question">5. Amount got debited from my bank account, payment is failed?</b>
            <p class = "answer">
                If your amount has been debited and payment status shows 'Failed', do not worry, your money is safe in the payment gateway which will be refunded to you within 5-8 working days.

                Please check your bank statement for a refund from 'NXTBillion'. If you are facing issues please email to us on help@ApniDukaan.in and attach a screenshot of your order.
            </p>
                        
            <b class = "question">6. How to return a product and get a refund?</b>
            <p class = "answer">
                To return the product, go to the âAccountâ tab, click on 'My Purchases', select your order and click on the return button. 

                A pick up agent will come to your delivery address and pick up the product. Please make sure it is packed and labels are intact. Communicate about the product return to your seller. After the product is returned, your seller will check the product and refund the amount through your desired payment method.

                If there is no return button on your order, this product might not be eligible for return. 
            </p>    

            <b class = "question">7. I have a problem with the ApniDukaan seller, how to report it?</b>
            <p class = "answer">
                If you have a problem with your seller, please write a mail to us on help@ApniDukaan.in. Please mention what problem you are facing and also attach a full screenshot of your seller's profile with the mail. We will try our best to provide a resolution.
            </p>  

            <b class = "question">8. I want to block a person from irritating me.</b>
            <p class = "answer">
                If someone is sending you unnecessary messages and you would want to stop receiving messages from them on ApniDukaan, go to the person's chat, click on the three dot button on the top right hand side corner and click on 'Block'.

                After blocking, the person cannot view your posts or send you any messages.

                If you wish to unblock the user, go to the âAccountâ tab, go to settings, click on 'Blocked List' and select the person you want to unblock and click on the unblock button.
            </p>  
            
            <hr>
            <h6 class="text-center">For Sellers</h6>
            <b class = "question">1. How to get orders?  </b>
            <p class = "answer">
                To get orders, just share your website or product link with your customers over WhatsApp, Facebook Marketplace, etc. They can order your product directly through the website, or even from the ApniDukaan app. 
            </p>
            
            <b class = "question">2. How is my payment calculated? </b>
            <p class = "answer">
                Your payment = Selling Price - ApniDukaan Delivery Fee. <br>
                The delivery fee for your order is calculated based upon the ApniDukaan Shipping Rate Card. To check the rate card, please go to âAccountâ tab in the app and click âApniDukaan Shipping Chargesâ.
            </p>
            
            <b class = "question">3. When do I get the payment? </b>
            <p class = "answer">
                For prepaid orders, you get payment within 2-3 working days from the date of dispatch.

                For Cash on Delivery orders, you get payment within 5-6 working days from the date of delivery. 

                Donât forget to add your bank account details in the app to receive the payments on time. Working days are Mon-Fri excluding bank holidays. 
            </p>
                        
            <b class = "question">4. What is the process of returns? </b>
            <p class = "answer">
                If you have turned on âReturnsâ for your product, you will receive a notification when the customer requests for a return through the ApniDukaan app. Note that return will be approved only after you click âAcceptâ for the return on the app. If you accept, our delivery partner will pickup the product from the customer and deliver it back to you. 

                You should directly send the money to the customer after you receive the product back.  Note that if your product does not use ApniDukaan shipping, you will need to handle the shipping of the return yourself.    
            </p>

            <b class = "question">5. What happens if an order is unserviceable for pick up?</b>
            <p class = "answer">
                In case of a product being unserviceable in âApniDukaan Shippingâ the system will automatically convert the order to âSelf Shippingâ. Order management and payment system will be changed to âSelf Shippingâ mode
            </p>
                        
            <b class = "question">6. How to pack and ship the product?</b>
            <p class = "answer">
                Packing and shipping the product are same as standard e-commerce practices. Standard policies with respect to restricted items also apply. 
            </p>    

            <b class = "question">7. Why is my product not yet picked up?</b>
            <p class = "answer">
                Pick up generally happens in 2-3 working days for the first few orders, after a few orders, your product will be picked up faster.
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