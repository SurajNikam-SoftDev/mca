<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>ApniDukaan :: View Shop</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/products.css">
    <link rel="stylesheet" href="assets/css/viewshop.css">

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
                        <a href="javascript:void(0)" onclick="location.href='index.jsp'"  style = "color:white;text-decoration: none;">ApniDukaan</a>
                    </div>
                    <div class="col text-left pt-1">
                        <a href="javascript:void(0)" onclick="location.href='myaddress.jsp'" style = "color:white;text-decoration: none;">
                        <i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">room</i>
                        <b style="padding-top: 0px;">Your Location</b>
                        </a>
                    </div>
                    <div class="col text-right pt-1">
                        <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\addtocart.jsp'" style = "text-decoration: none;color:white"><span class="badge rounded-pill bg-danger pt-1" style = "font-weight: bolder;font-size: 13px;">10</span><i class="material-icons nav__icon" style ="color:white;font-weight: bolder;">shopping_cart</i></a>
                    </div>
                    <div class="col-md-12 pt-2">
                        <form action="#" ui-widget method="GET" >
                            <div class="input-group">
                                <input type="text" class="form-control search-box-pre" id="tags" placeholder="Search In Shop Name..." aria-label="Recipient's username" aria-describedby="basic-addon2">
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
              <li class="breadcrumb-item" aria-current="page">Home</li>
              <li class="breadcrumb-item" aria-current="page">View Product</li>
              <li class="breadcrumb-item active" aria-current="page">View Shop</li>
            </ol>
        </nav>
        
        
    </header>

    <div class="viewshop-container">
        <h3 style = "text-align: center;">Shop Name</h3>
        
        <div class="rating-section">
            <b style = "font-size: small;">shop ratings:</b>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star checked staricon"></span>
            <span class="fa fa-star staricon" style = "color: black;"></span>
            <span class="fa fa-star staricon" style = "color: black;"></span>
            3/5.
        </div>
        <b style = "float: right;">Total Shop Products : 100</b>
    </div>

    <div class="container pt-2" >
        <div class="row">
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">  
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>  
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>  
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div> 
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>
            <div class="col-md-6">
                <div class="row">
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col" style="padding:5px;">
                        <div class = "card product-card" style="background-color: white;">
                            <img class="card-img-top" src="assets/img/2.jpg" alt="Card image cap">
                            <div class="card-body">
                                <p class="card-text text-left"><b>Product Title </b> <br/> Some quick example text to build on the card title</p>
                                <p class="card-text text-right inr-price">Rs. 650.00</p>
                            </div>
                            <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\viewproduct.jsp'" style = "text-decoration: none;">    
                            <div class="card-footer">
                                <p class="card-text text-center">Buy Now</p>
                            </div>
                            </a>
                        </div>
                    </div>
                </div>      
            </div>
                                
        </div>
    </div>  
    <br>    
    <div class="page-pagination">
        <a href="#" class="previous">&laquo; Previous</a>
        <a href="#" class="next">Next &raquo;</a>      
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
            <a href="index.jsp" class="nav__link" style = "text-decoration: none;">
              <i class="material-icons nav__icon">home</i>
              <span class="nav__text">Home</span>
            </a>
            <a href="order.jsp" class="nav__link nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon">shopping_bag</i>
                <span class="nav__text">Order</span>
              </a>
              <a href="shop.jsp" class="nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon active">dashboard</i>
                <span class="nav__text">Shop</span>
              </a>
              <a href="notification.jsp" class="nav__link"  style = "text-decoration: none;">
                  <i class="material-icons nav__icon">notifications</i>
                  <span class="nav__text">Notify<span class="badge rounded-pill bg-warning " style="font-size: 10px;">10</span></span>
                </a>
              <a href="account.jsp" class="nav__link"  style = "text-decoration: none;">
                <i class="material-icons nav__icon">person</i>
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