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
        <form class = "form-body">
            <div class="form-group">
                <label for="inputAddress">Product Name</label>
                <input type="text" class="form-control" name="productname" placeholder="Product Name">
            </div>
            <div class="form-group">
                <label for="inputAddress">Product SubTitle</label>
                <input type="text" class="form-control" name="productsubtitle" placeholder="Product SubTitle">
            </div>
            <div class="form-row">
                <div class="form-group col-md-6">
                    <label for="productprice">Price (in Rs.)</label>
                    <input type="text" class="form-control" name="productprice" placeholder="Product Price">
                </div>
                <div class="form-group col-md-6">
                    <label for="category">Category</label>
                    <select name="category" class="form-control" style = "font-size: 12px;">
                    <option selected>Choose Category...</option>
                    <option>1</option>
                    <option>2</option>
                    <option>3</option>
                    </select>
                </div>
            </div>

            <hr>

            <div class = "form-row">
                <div class="col-10">
                    <p>Allow To Cash On Delivery</p>
                </div>
                <div class="col-2 text-right">
                    <input type = "checkbox" >
                </div>
                <div class="col-10">
                    <p>Allow Return</p>
                </div>
                <div class="col-2 text-right">
                    <input type = "checkbox">
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
                            <label for="sizeheight">Size (in Height)</label>
                            <input type="text" class="form-control" name="sizeheight" placeholder="Size In Height">
                        </div>
                        <div class="form-group col">
                            <label for="sizewidth">Size (in Width)</label>
                            <input type="text" class="form-control" name="sizewidth" placeholder="Size In Width">
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="row">
                        <div class="form-group col">
                            <label for="stock">Total Stock</label>
                            <input type="text" class="form-control" name="stock" placeholder="Total Stock">
                        </div>
                        <div class="form-group col">
                            <label for="returnperiod">Return Period</label>
                            <input type="text" class="form-control" name="returnperiod" placeholder="Return Period">
                        </div>
                    </div>  
                </div>
                <div class="col-md-12">
                    <div class="form-group">
                        <label for="description">Description</label>
                        <br>
                        <textarea style="width: 100%;"></textarea>
                    </div>
                </div>
                
                
            </div>
            
            <div class = "text-center">
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary form-control"  data-toggle="modal" data-target="#exampleModalCenter" style = "font-size: 12px;font-weight: bolder;" >Submit</button>
            </div>
            
            <!-- Modal -->
            <div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
                <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header text-center">
                    <h5 class="modal-title" id="exampleModalLongTitle">Confirmation</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                    </div>
                    <div class="modal-body text-center">
                        <div class = "modal-symbol">
                            <img src="https://media.giphy.com/media/YlSR3n9yZrxfgVzagm/giphy.gif" class="modal-image" style = "height:100px; width: 100px;"> <!-- saved -->
                            <!-- <img src="https://media.giphy.com/media/L2NX9o62VOsZqH8IPp/giphy.gif" class="modal-image">  delete -->
                            <!-- <img src="https://media.giphy.com/media/hlvIX2f1zeLESr2DI4/giphy.gif" class="modal-image">  update -->  
                        </div>
                    Data Saved Successfully!!!
                    </div>
                    <div class="modal-footer">
                    <!-- <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button> -->
                        <button type="button" class="btn btn-primary" onclick = "validation()">Okay</button>
                    </div>
                </div>
                </div>
            </div>
            
            <br>
        </form>
        
        
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
    
    <script type="text/JavaScript">
        function  validation() {
            window.location.href = "index.jsp";
        }
    </script>
    <script>

        var slideIndex = 1;
        showSlides(slideIndex);
        
        function plusSlides(n) {
          showSlides(slideIndex += n);
        }
        
        function currentSlide(n) {
          showSlides(slideIndex = n);
        }
        
        function showSlides(n) {
          var i;
          var slides = document.getElementsByClassName("mySlides");
          var dots = document.getElementsByClassName("demo");
          var captionText = document.getElementById("caption");
          if (n > slides.length) {slideIndex = 1}
          if (n < 1) {slideIndex = slides.length}
          for (i = 0; i < slides.length; i++) {
              slides[i].style.display = "none";
          }
          for (i = 0; i < dots.length; i++) {
              dots[i].className = dots[i].className.replace(" active", "");
          }
          slides[slideIndex-1].style.display = "block";
          dots[slideIndex-1].className += " active";
          captionText.innerHTML = dots[slideIndex-1].alt;
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