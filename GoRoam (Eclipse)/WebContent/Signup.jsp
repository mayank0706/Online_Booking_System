<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

  <%@ page import="java.sql.*,java.util.*"%>
<%@page import="java.util.*" %>
<%
Random rand = new Random();
int n = rand.nextInt(56700) + 10000;
%>

<html>
<head><title>Signup Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="w3.css">
<style>
 h1{
      font-size:60px;
   }
  body {
    background-image: src("images\img5.jpg");
  }
ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #111;
}

.active {
    background-color:green;
}
.back{
          background-color:grey;
        }
  .imgcontainer {
    text-align: center;
    margin: 24px 0 12px 0;
}
/* Avatar image */
img.avatar {
    width: 40%;
    border-radius: 50%;
}
</style>

 <script type="text/javascript">
  function success()
  {
	  alert("if registration is successful..you'll be directed to login page then yoou have to login");
  }
  
</script>

</head>
<body background="images\img5.jpg">
  <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
    <ul>
  <li><a  href="Home.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a  href="Login.jsp">Login</a></li>
  <li><a class="active" href="Signup.jsp">Signup</a></li>
  <li><a href="Flight.jsp">Flights</a></li>
  <li><a href="Bus.jsp">Bus</a></li> 
  
</ul><br>
 <div class="w3-third w3-container">
  </div>
 <div class="w3-third w3-container w3-third">
  <div class="w3-card-4 w3-red w3-text-white w3-animate-left" style="width:400px">
     <div class="w3-container w3-red">
        <h3 class="w3-center">User Details</h3>
     </div>
    <div class="imgcontainer">
    <img src="images\img7.png" alt="Avatar" class="avatar">
  </div>
   <form class="w3-container" action="signupprocess.jsp" method="post"> 
        <p>
          <label>User ID</label>
          <input class="w3-input" type="text" name="id" value="<%=n %>"></p>
        <p>
          <label>Name</label>
          <input class="w3-input" required="required" type="text" name="name"></p>
               <p>
          <label>Contact No.</label>
          <input class="w3-input" required="required" type="text" name="contact"></p>
        <p>
          <label>Email</label>
          <input class="w3-input" type="text" name="mail"></p>
         <p><label>Username</label>
          <input class="w3-input" required="required" type="text" name="usernm"></p>
     <p><label>Password</label>
          <input class="w3-input" required="required" type="password" name="pass"></p>
       <p class="w3-center"><input class="w3-btn w3-blue-grey" type="submit" value="Register" onclick="success()"></p>
  </form>
   </div>
      </div>
<div class="w3-container w3-third">
</div>
</body>
</html>