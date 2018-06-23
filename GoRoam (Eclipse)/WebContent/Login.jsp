<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Login Page</title>
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
<body background="images\img5.jpg">
  <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
    <ul>
  <li><a  href="Home.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a class="active" href="Login.jsp">Login</a></li>
  <li><a href="Signup.jsp">Signup</a></li>
  <li><a href="Flight.jsp">Flights</a></li>
  <li><a href="Bus.jsp">Bus</a></li> 
  
</ul><br>
 <div class="w3-third w3-container">
   </div>
 <div class="w3-third w3-container w3-red w3-text-white">
   <div class="w3-card w3-padding w3-red w3-text-white">
      <h3 class="w3-mystyle w3-center w3-wide">USER LOGIN</h3>
   </div>
  <div class="imgcontainer">
    <img src="images\img7.png" alt="Avatar" class="avatar">
  </div>
  <div class="w3-card w3-padding w3-red w3-text-white">
<form class="w3-container" action="userprofile.jsp">
  <p>
  <label>Username</label>
  <input class="w3-input w3-hover-red" required="required" type="text" name="usernm"></p>
  <p>
  <label>Password</label>
  <input class="w3-input w3-hover-red" required="required" type="password" name="pass"></p>
  <input class="w3-btn w3-blue-grey w3-hover-red" type="submit" value="Login"><br><br>
  <a class="w3-hover-red w3-myfont" href="Forgotpass.jsp">Forgot Password</a>
 </form>
</div>
</div>
 <div class="w3-third w3-container">
   </div>
 
</body>
</html>