<!DOCTYPE html>
<html>

<head>
    <title>Janta Restaurant</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/index.css">
</head>

<body>

    <button onclick="topFunction()" id="myBtn" title="Go to top">
        <span class="glyphicon glyphicon-chevron-up"></span>
    </button>

    <nav class="navbar navbar-inverse navbar-fixed-top navigation-clean-search" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#myNavbar">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.php">Skylight Cafe</a>
            </div>

            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.php">Home</a></li>
                    <li><a href="aboutus.php">About</a></li>
                    <li><a href="contactus.php">Contact Us</a></li>
                </ul>

                <?php if(isset($_SESSION['login_user1']) || isset($_SESSION['login_user2'])): ?>
                <ul class="nav navbar-nav navbar-right">
                    <?php if(isset($_SESSION['login_user1'])): ?>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user1']; ?></a></li>
                    <li><a href="myrestaurant.php">MANAGER CONTROL PANEL</a></li>
                    <?php else: ?>
                    <li><a href="#"><span class="glyphicon glyphicon-user"></span> Welcome <?php echo $_SESSION['login_user2']; ?></a></li>
                    <li><a href="foodlist.php"><span class="glyphicon glyphicon-cutlery"></span> Food Zone</a></li>
                    <li><a href="cart.php"><span class="glyphicon glyphicon-shopping-cart"></span> Cart
                            (<?php echo isset($_SESSION["cart"]) ? count($_SESSION["cart"]) : "0"; ?>)
                        </a></li>
                    <?php endif; ?>
                    <li><a href="logout.php"><span class="glyphicon glyphicon-log-out"></span> Log Out</a></li>
                </ul>
                <?php else: ?>
                <ul class="nav navbar-nav navbar-right">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false"><span class="glyphicon glyphicon-user"></span> Sign Up <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="customersignup.php">User Sign-up</a></li>
                            <li><a href="managersignup.php">Manager Sign-up</a></li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true"
                            aria-expanded="false"><span class="glyphicon glyphicon-log-in"></span> Login <span
                                class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="customerlogin.php">User Login</a></li>
                            <li><a href="managerlogin.php">Manager Login</a></li>
                        </ul>
                    </li>
                </ul>
                <?php endif; ?>
            </div>
        </div>
    </nav>

    <div class="wide">
        <div class="col-xs-5 line">
            <hr>
        </div>
        <div class="col-xs-2 logo">
            <img src="images/logo2.jpg">
        </div>
        <div class="col-xs-5 line">
            <hr>
        </div>
        <div class="tagline">
            <font color="red">
                <br>Food is wealth and health
        </div>
    </div>
    <br>
    <div class="orderblock">
        <h2>Feeling Hungry?</h2>
        <center><a class="btn btn-success btn-lg" href="customerlogin.php" role="button">Order Now</a></center>
    </div>

    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script>
        const dropdownToggles = document.querySelectorAll('.dropdown-toggle');
        dropdownToggles.forEach(toggle => {
            toggle.addEventListener('click', (event) => {
                const dropdownMenu = toggle.nextElementSibling;
                dropdownMenu.style.display = dropdownMenu.style.display == 'block' ? 'none' : 'block';
            });
        });
    </script>

</body>

</html>
