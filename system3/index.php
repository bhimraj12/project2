<?php
session_start();
?>

<html>

  <head>
    <title> Home | Rk Restaurant </title>
  </head>

  <link rel="stylesheet" type = "text/css" href ="css/bootstrap.min.css">

  <link rel="stylesheet" type = "text/css" href ="css/index.css">
  
  <script src="https://kit.fontawesome.com/332a215f17.js" crossorigin="anonymous"></script> 

  <body>

    <button onclick="topFunction()" id="myBtn" title="Go to top">
      <span class="glyphicon glyphicon-chevron-up"></span>
    </button>
    <script type="text/javascript">
      window.onscroll = function()
      {
        scrollFunction()
      };

      function scrollFunction(){
        if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
          document.getElementById("myBtn").style.display = "block";
        } else {
          document.getElementById("myBtn").style.display = "none";
        }
      }

      function topFunction() {
        document.body.scrollTop = 0;
        document.documentElement.scrollTop = 0;
      }
    </script>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">Rk Restaurant</a>
        </div>

        <div class="collapse navbar-collapse " id="myNavbar">
          <ul class="nav navbar-nav">
            <li class="active" ><a href="index.php">Home</a></li>
            <li><a href="aboutus.php">About</a></li>
            <li><a href="contactus.php">Contact Us</a></li>

          </ul>

<?php
if(isset($_SESSION['login_user1'])){

?>


          <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?> </a></li>
            <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
            <li><a href="logout_m.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
<?php
}
else if (isset($_SESSION['login_user2'])) {
  ?>
           <ul class="nav navbar-nav navbar-right">
            <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?> </a></li>
            <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone </a></li>
            <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
              (<?php
              if(isset($_SESSION["cart"])){
              $count = count($_SESSION["cart"]); 
              echo "$count"; 
            }
              else
                echo "0";
              ?>)
             </a></li>
            <li><a href="logout_u.php"><span class="glyphicon glyphicon-log-out"></span> Log Out </a></li>
          </ul>
  <?php        
}
else {

  ?>

<ul class="nav navbar-nav navbar-right">
            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span class="caret"></span> </a>
                <ul class="dropdown-menu">
              <li> <a href="customersignup.php"> User Sign-up</a></li>
              <li> <a href="managersignup.php"> Manager Sign-up</a></li>
              
            </ul>
            </li>

            <li><a href="#" class="dropdown-toggle active" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span class="caret"></span></a>
              <ul class="dropdown-menu">
              <li> <a href="customerlogin.php"> User Login</a></li>
              <li> <a href="managerlogin.php"> Manager Login</a></li>
             
            </ul>
            </li>
          </ul>

<?php
}
?>
       </div>

      </div>
    </nav>

    <!-- <div class="wide">
      	<div class="col-xs-5 line"><hr></div>
        <div class="col-xs-2 logo"><img src="images/logo.png"></div>
        <div class="col-xs-5 line"><hr></div>
        <div class="tagline">Good Food is Good Mood</div>
        <div class="backgroundimg"><img src="images/background6.jpg" alt=""></div>
    </div> -->
    <header class="header">
    <div class="hero">
        <h1 class="title">Rk Restaurant</h1>
        <a class="hero-button pulsate" href="customerlogin.php" role="button" > Order Online Foods </a>
        <!-- <a href="#" class="hero-button pulsate">Order Online Foods </a> -->
        <a href="#" class="hero-button pulsate">Book a Table</a>
      </div>
    </header>

<!-- Varieties================ -->
<section id="about">
    <div>
        <h2 class="title-text">Varieties</h2>
    </div>
    <div class="about-center">
       <!-- Start of the article======= -->
        <article class="about">
            <div class="about-icon">
                <i class="fas fa-bread-slice"></i>
            </div>
            <div class="about-text">
                <h2 class="about-subtitle">Breakfast</h2>
                <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
            </div>
        </article>
       <!-- End of the article======== -->     
       <!-- Start of the article======= -->
        <article class="about">
            <div class="about-icon">
                <i class="fas fa-utensils"></i>
            </div>
            <div class="about-text">
                <h2 class="about-subtitle">Lunch & Dinner</h2>
                <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
            </div>
        </article>
       <!-- End of the article======== -->
            <!-- Start of the article======= -->
            <article class="about">
                <div class="about-icon">
                    <i class="fas fa-cheese"></i>
                </div>
                <div class="about-text">
                    <h2 class="about-subtitle">Dessert </h2>
                    <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
                </div>
            </article>
           <!-- End of the article======== -->
                <!-- Start of the article======= -->
        <article class="about">
            <div class="about-icon">
                <i class="fas fa-hamburger"></i>
            </div>
            <div class="about-text">
                <h2 class="about-subtitle">Junk Foods</h2>
                <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
            </div>
        </article>
       <!-- End of the article======== -->
            <!-- Start of the article======= -->
            <article class="about">
                <div class="about-icon">
                    <i class="fas fa-ice-cream"></i>
                </div>
                <div class="about-text">
                    <h2 class="about-subtitle">Icecream</h2>
                    <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
                </div>
            </article>
           <!-- End of the article======== -->
                <!-- Start of the article======= -->
        <article class="about">
            <div class="about-icon">
                <i class="fas fa-mug-hot"></i>
            </div>
            <div class="about-text">
                <h2 class="about-subtitle">Drinks</h2>
                <p class="about-info">Lorem ipsum dolor sit amet consectetur adipisicing elit. Hic nulla harum placeat nam recusandae quia. Aliquid magnam odio numquam velit?</p>
            </div>
        </article>
       <!-- End of the article======== -->

    </div>

</section>
<!-- End of Varieties========= -->


    <!-- <br>
    <div class="orderblock">
    <h2>Feeling Hungry?</h2>
    <center><a class="btn btn-success btn-lg" href="customerlogin.php" role="button" > Order Now </a></center>
    </div> -->

   <!-- Footer=========== -->
<footer class="footer">
    <div class="section-center"></div>
    <p class="text">
        &copy;<span>Rk Restaurant</span>
            <a href="https://www.facebook.com/pages/R-K-Restaurant/115414549008673"><i class="fab fa-facebook facebook"></i></a>
    <a href="https://twitter.com/rkrestaurant"><i class="fab fa-twitter twitter"></i></a>
    <a href="https://www.instagram.com/explore/locations/1033991650052554/rk-san-contemporary-japanese-restaurant/?hl=en"><i class="fab fa-instagram instagram"></i></a>
    <a href="https://in.pinterest.com/rkrestaurant99/"><i class="fab fa-pinterest pinterest"></i></a>
    <br>𝕯𝖊𝖘𝖎𝖌𝖓𝖊𝖉  & 𝕯𝖊𝖛𝖊𝖑𝖔𝖕𝖊𝖉 𝖇𝖞 - 𝕭𝖍𝖎𝖒𝖗𝖆𝖏 𝕻𝖆𝖗𝖎𝖍𝖆𝖗 𝖆𝖓𝖉 𝕶𝖎𝖗𝖆𝖓 𝕾𝖚𝖗𝖞𝖆𝖜𝖆𝖓𝖘𝖍𝖎 
</p>
<br>
</footer>
<!-- /* End of Footer============= */ -->
 
  
</body>
</html>