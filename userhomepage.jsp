
<%
    // Retrieve the admin username from the session attribute
    String email = (String) session.getAttribute("email");

if(email == null || email.isEmpty()) {
          response.sendRedirect("index.html");
}
%>
<html>
  <head>
      <title>Mainpage</title>
      <style>
    *{
          padding:0;
          margin:0;
    }
    .body {
	width: 1170px;
	margin:auto;
}
header {
	background: linear-gradient(rgba(0,0,0,0),rgba(0,0,0,0)),url("r1.jpg");
	height: 100vh;
	-webkit-background-size:cover;
	background-size:cover;
	background-position: center center;
	position: relative;
}
.nav-area {
	float: right;
	list-style: none;
	margin-top; 20px;
	
}
.nav-area li {
	display: inline-block;
               background-color: inherit;
}
.nav-area li a {
	
	text-decoration: none;
	padding: 5px 20px;
	font-family: poppins;
	font-size: 23px;
	color:Red;
}
.nav-area li a:hover{
	background: #fff;
	color: #333
}
a:link {
  text-decoration: none;
}
.dropbtn {
 
 
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;

}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  font-size: 15px;
}

.dropdown:hover .dropdown-content {display: block;}
</style>
</head>
<body>
 <header>
<center>
        <h1 style="color:white; font-size:50px" >GIFTS SHOP</h></center><br><br><br>
  
        <div class="mainproject">
      </div>
        <ul class="nav-area">
              <li><a href="mainproject.html">SHOP NOW</a></li>
              <li><a href="myorders.jsp">Myorders</a></li>
              <li><a href="mycart.html">My Cart</a></li>
             <li><a href="logout.jsp">Logout</a></li>
        </ul>
      </div>
</header> 
 </body>
</html>
