<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
   String from=(String)request.getParameter("from");
   String to=(String)request.getParameter("to");
   
  %>
  
  <html>
<head><title>Flights Page</title>
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
        
   </style>
  </head>

<body background="images\img5.jpg">
  <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
    <ul>
  <li><a  href="Home.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a  href="Login.jsp">Login</a></li>
  <li><a class="active" href="Flight.jsp">Flights</a></li>
  <li><a href="Bus.jsp">Bus</a></li> 
  <li><a href="Login.jsp">BookTicket</a></li>
</ul><br>
   
   <div class="w3-container w3-text-orange">
  <h2>Some of Common Routes</h2>
 
 <div class="w3-half w3-container">  
  <div class="w3-card-4" style="width:100%">
    <img src="images\img8.jpg"  style="width:100%">
    <div class="w3-container w3-center">
      <p class="w3-orange">NEW-DELHI To MUMBAI</p>
    </div></div></div>
 
<div class="w3-half w3-container">  
  <div class="w3-card-4" style="width:100%">
    <img src="images\img10.jpg" style="width:100%">
    <div class="w3-container w3-center">
      <p class="w3-orange">NEW-DELHI To CHENNAI</p>
    </div></div></div>
</div><br>
   
   <%
   try{
   	Class.forName("com.mysql.jdbc.Driver");
   	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/goroam","root","tiger");
   	Statement stmt=con.createStatement();
   	ResultSet rs=stmt.executeQuery("select * from flight where frm='"+from+"' && dest='"+to+"'");
   
   %>      
   
       <div class="w3-container w3-text-white">
<table class="w3-table w3-red">
    <tr>
      <th>Flight No.</th>
      <th>From</th>
      <th>Destination</th>
      <th>Departure</th>
      <th>Arrival</th>
      <th>Fair</th>
      
          </tr>
          
     <%
              while(rs.next()){
            %>
            
        <tr class="w3-blue">
     
     
     
      <td><%=rs.getString(1)%></td>
      <td><%=rs.getString(2)%></td>
      <td><%=rs.getString(3)%></td>
      <td><%=rs.getString(4)%></td>
      <td><%=rs.getString(5)%></td>
      <td><%=rs.getString(6)%></td>
      
     </tr>            
     
     <% } }catch(Exception e){
     out.print(e);}
      %>
      </table>
</div>
    </body>
    </html> 