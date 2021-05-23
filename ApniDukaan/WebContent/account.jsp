<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: Account</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/menucard.css">

    <!-- jquery-ui CSS -->
    
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.4/css/jquery.dataTables.min.css">
    <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
    
    
</head>
<body >
    
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
              <li class="breadcrumb-item active" aria-current="page">Account</li>
            </ol>
        </nav>
        <div class = "col page-heading" style="background-color: white;padding:20px 15px 10px 15px;box-shadow: 0 2px 3px -1px rgba(0, 0, 0, 0.1);">
            <div class = "row">
                <div class="col">
                    <h6>Shop Name</h6>
                </div>
                <div class="col text-right">
                    <a href="javascript:void(0)" class = "addproductbutton" onclick="location.href='ViewShop'" style = "text-decoration: none;">VIEW SHOP</a>
                </div>
            </div>   
        </div>
    </header>
    
    <div class="container pt-2" >
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='ShopSettings'" style = "text-decoration: none;color:black;" >
                        
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Shop Settings</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='ShoppingCharges'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/3.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Shopping Charges</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='HowToSell'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/4.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>How &nbsp; To &nbsp; Sell</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='GrowYourBusiness'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/5.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Grow Your Business</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='PurchaseOrder'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/4.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Purchase Order</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='MyPayment'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/5.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>My Payment</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
            </div>  
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='WishList'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/3.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>WishList</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='BankDetail'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/4.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Bank Detail</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='MyAddress'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/5.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>My Address</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='HelpFAQ'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Help&FAQ</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='ContactUs'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/4.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Contact Us</b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                    <div class="col" style="padding:5px;">
                        <a href="javascript:void(0)" onclick="location.href='Setting'" style = "text-decoration: none;color:black;">
                        <div class = "card product-card" >
                            <img class="card-img-top" src="assets/img/5.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-center"><b>Setting </b></p>
                            </div>
                        </div>
                        </a>
                    </div>
                </div>
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