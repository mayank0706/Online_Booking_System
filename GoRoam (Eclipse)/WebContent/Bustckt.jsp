<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><title>Flight Ticket Page</title>
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
  </head>

<body background="images\img5.jpg">
  <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
    <ul>
  <li><a href="Home.jsp">Home</a></li>
  <li><a href="Contact.jsp">Contact</a></li>
  <li><a href="Flighttckt.jsp">Flight Tickets</a></li>
  <li><a class="active" href="Bustckt.jsp">Bus Tickets</a></li> 
  <li><a href="Home.jsp">Logout</a></li>
</ul><br>      

<div class="w3-container w3-text-orange">
  <h2>Some of Common Routes</h2>
 
 <div class="w3-half w3-container">  
  <div class="w3-card-4" style="width:100%">
    <img src="images\img13.jpg"  style="width:100%">
    <div class="w3-container w3-center">
      <p class="w3-orange">NEW-DELHI To MANALI</p>
    </div></div></div>
 
<div class="w3-half w3-container">  
  <div class="w3-card-4" style="width:100%">
    <img src="images\img15.jpg" style="width:100%">
    <div class="w3-container w3-center">
      <p class="w3-orange">NEW-DELHI To JAIPUR</p>
    </div></div></div>
</div><br>

 <div class="w3-third w3-container">
    <div class="w3-card-4 w3-red">
        <h3 class="w3-center">Search Buses</h3>
     <div class="imgcontainer">
    <img src="images\img16.png" alt="Avatar" class="avatar">
  </div> 
       <form class="w3-container" action="srchbus1.jsp" method="post"> 
         <p>
          <label>From</label>
          <select class="w3-select" name="from">
            <option value="" disabled selected>Choose your place</option>
           <option value="DELHI">DELHI</option> 
           <option value="CHANDIGARH">CHANDIGARH</option>
         </select></p>
  
      <p>
          <label>To</label>
          <select class="w3-select" name="to">
            <option value="" disabled selected>Choose your place</option>
            <option value="DELHI">DELHI</option>
            <option value="PUNE">PUNE</option>
            <option value="MANALI">MANALI</option>
            <option value="GOA">GOA</option>
            <option value="CHANDIGARH">CHANDIGARH</option>
            <option value="SHIMLA">SHIMLA</option>
            <option value="JAIPUR">JAIPUR</option>
            <option value="LUCKNOW">LUCKNOW</option>
            <option value="HARIDWAR">HARIDWAR</option>
         </select></p>
   <p class="w3-center"><input class="w3-btn w3-blue-grey" type="submit" value="submit"></p>
  </form>
   </div></div>

<div class="w3-third w3-container">
  </div>
  
  <div class="w3-third w3-container">
    <div class="w3-card-4 w3-red">
        <h3 class="w3-center">Book Bus Ticket</h3>
        <form class="w3-container" action="btckt.jsp" method="post"> 
         
       <p>
  <label>Name</label>
  <input class="w3-input" required="required" type="text" name="nm"></p>  
         
        <p>
  <label>Contact</label>
  <input class="w3-input" required="required" type="text" name="con"></p> 
         
         <p>
  <label>Date</label>
  <input class="w3-input" required="required" type="text" name="date" placeholder="dd-mm-yyyy"></p>
  <p>
          <label>From</label>
          <select class="w3-select" name="from">
            <option value="" disabled selected>Choose your place</option>
           <option value="DELHI">DELHI</option> 
           <option value="CHANDIGARH">CHANDIGARH</option>
         </select></p>
  
      <p>
          <label>To</label>
          <select class="w3-select" name="to">
            <option value="" disabled selected>Choose your place</option>
            <option value="DELHI">DELHI</option>
            <option value="PUNE">PUNE</option>
            <option value="MANALI">MANALI</option>
            <option value="GOA">GOA</option>
            <option value="CHANDIGARH">CHANDIGARH</option>
            <option value="SHIMLA">SHIMLA</option>
            <option value="JAIPUR">JAIPUR</option>
            <option value="LUCKNOW">LUCKNOW</option>
            <option value="HARIDWAR">HARIDWAR</option>
         </select></p>
         
         <p class="w3-center"><input class="w3-btn w3-blue-grey" type="submit" value="submit"></p>
  </form>
   </div></div>
        </body>
        </html>