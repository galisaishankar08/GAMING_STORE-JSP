
    <%@page import="java.sql.*,java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="styleSheet" href="Profilestyle.css">

<title>Profile</title>
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
              <li><a href="About.jsp">About Us</a></li>
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
              <li>About</li>
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
   
   <%
   String url= "jdbc:mysql://localhost:3306/gaming_store";
   String user = "root";
   String password = "2010030054";
   
   String username = session.getAttribute("username").toString();
   
   String sql = "select id , uname , phno , email from signup where id in (select id from login where username='"+username+"');";
   Connection con = DriverManager.getConnection(url,user,password);
   
   Statement st= con.createStatement();
   ResultSet rs=st.executeQuery(sql);
   rs.next();
   String userid = rs.getString(1);
   String uname = rs.getString(2);
   String phno = rs.getString(3);
   String email = rs.getString(4);
   %>
   
	<div>
		<h1>UserId 			:  <% out.println(userid); %></h1>
		<h1>Name 			:  <% out.println(uname); %></h1>
		<h1>Phone Number  	:  <% out.println(phno); %></h1>
		<h1>Email 			:  <% out.println(email); %></h1>
	</div>
		

</body>
</html>