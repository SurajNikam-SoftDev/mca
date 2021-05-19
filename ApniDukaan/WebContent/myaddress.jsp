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
    .btn{
        border-radius: 0px;
    }
</style>
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
                    <a href="javascript:void(0)" onclick="location.href='http:\\ApniDukaan\\addaddress.jsp'" class = "addproductbutton" style = "text-decoration: none;"> + Add New Address</a> 
                </div>
            </div>   
        </div>
        
    </header>

    <div class="container-fluid pt-3">
        <div class="row">
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Address 1
                    </div>
                    <div class="card-body">
                        <b>Customer Name</b>
                        <address>
                            Box 564, Disneyland<br>
                            USA
                        </address>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-danger" onclick="deleteaddress()">Delete</button>
                        <button type="button" class="btn btn-success" onclick="editaddress()">Edit</button>
                    </div>
                </div>  
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Address 2
                    </div>
                    <div class="card-body">
                        <b>Customer Name</b>
                        <address>
                            Box 564, Disneyland<br>
                            USA
                        </address>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-danger" onclick="deleteaddress()">Delete</button>
                        <button type="button" class="btn btn-success" onclick="editaddress()">Edit</button>
                    </div>
                </div>  
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-header">
                        Address 3
                    </div>
                    <div class="card-body">
                        <b>Customer Name</b>
                        <address>
                            Box 564, Disneyland<br>
                            USA
                        </address>
                    </div>
                    <div class="btn-group" role="group" aria-label="Basic example">
                        <button type="button" class="btn btn-danger" onclick="deleteaddress()">Delete</button>
                        <button type="button" class="btn btn-success" onclick="editaddress()">Edit</button>
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
        function  editaddress() {
            window.location.href = "editaddress.jsp";
        }
        function deleteaddress() {
            alert("Delete Address");
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