
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="Aboutstyle.css">
<title>About</title>
</head>
<body >
	<header>
     <br> <br> <br> <br> 
    <nav class="topNav">
        <div class="menuFlex">
          <div class="logo">
            <a href="Home.html"><img src="gs.jpg" class="logoImg"></a>
          </div>
          <div class="menu-toggle">
            <a href="#"><i class="fas fa-bars"></i></a>
          </div>
          <div class="menuDeskTop">
            <ul>
              <li><a href="Home.html">Home</a></li>
              <li><a href="profile.jsp">Profile</a></li>
              <li><a href="about.jsp">About Us</a></li>
              <li><a href="Login.html">Logout</a></li>
            </ul>
          </div>
        </div>
        <div class="menu">
          <!--Mobile Dropdown Menu-->
          <ul>
            <a href="Home.html">
              <li>Home</li>
            </a>
            <a href="profile.jsp">
              <li>Profile</li>
            </a>
            <a href="About.jsp">
              <li>About Us</li>
            </a>
            <a href="Login.html">
              <li>Logout</li>
            </a>
          </ul>
        </div>
      </nav>
    </header>
   <script >
       $(document).ready(function () {
        $(".menu-toggle a").click(function () {
            $(".menu").slideToggle(500);
        });
        });
   </script>
   
   <h2>
   Google states in its Developer Policy Center that "Google Play supports a variety of monetization strategies to benefit developers and users, including paid distribution,
    in-app products, subscriptions, and ad-based models", and requires developers to comply with the policies in order to "ensure the best user experience". It requires that developers charging for apps and downloads through Google Play must use Google Play's payment system. 
    In-app purchases unlocking additional app functionality must also use the Google Play payment system, 
    except in cases where the purchase "is solely for physical products" or "is for digital content that may be consumed outside of the app itself (e.g. songs that can be played on other music players)."
   </h2>
</body>
</html>