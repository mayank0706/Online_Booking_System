<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
 <%@ page import="java.sql.*" %>
<%

String usernm=request.getParameter("usernm");
String pass=request.getParameter("pass");

 try{
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/goroam","root","tiger");
        	Statement stmt=con.createStatement();
        	ResultSet rs=stmt.executeQuery("select * from signup where username='"+usernm+"'");
            while(rs.next()) {
            String pswrd=rs.getString(6);
            String nm=rs.getString(5);
               if(pass.equals(pswrd))
               {
            	   %>
            	   
    <html>
<head><title>Profile Page</title>
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
</style>
<body background="images\img5.jpg">
  <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
    <ul>
  <li><a  href="Home.jsp">Home</a></li>
  <li><a  href="Contact.jsp">Contact</a></li>
  <li><a href="Flighttckt.jsp">Flight Tickets</a></li>
  <li><a href="Bustckt.jsp">Bus Tickets</a></li> 
  <li><a href="Home.jsp">Logout</a></li>
</ul><br>

 <div class="w3-container w3-center w3-text-orange">
   <h3 class="w3-black">Welcome to GoRoam ....a pleasure of traveling</h3>
 </div><br><br>
 
 
 <%
   try{
	     
	     String sql="select * from signup where username='"+usernm+"'";
	     
	     rs=stmt.executeQuery(sql);   
   %>
<div class="w3-container w3-text-white">
 <div class="w3-card-4">
<table class="w3-table w3-red">
    <tr>
      <th>User Id</th>
      <th>Name</th>
      <th>Contact</th>
      <th>Email</th>
      <th>Username</th>
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
      </tr>
      
      <%  String id=rs.getString(1);
	    session.setAttribute("id",id); 
	    String nm1=rs.getString(2);
	    session.setAttribute("name",nm1);} %>
      <% 
   } catch(Exception e){
     out.print(e);}
      %>
      </table>
</div></div><br><br>

  <div class="w3-container">
      <div class="w3-card-4">
      <h3 class="w3-orange">Why GoRoam ?</h2>
   <h6 class="w3-orange">GoRoam offers great offers, some of the lowest airfares, exclusive discounts and a seamless online booking experience. Flight bookings through
         the desktop is a delightfully customer friendly experience, and with just a few clicks you can complete your booking. GoRoam constantly adds
         value to its product and continues to offer the best to its customers.</h6>
</div></div>
</body>
</html>        	   

<% }
               else{
            	   
            	   
            	   response.sendRedirect("error.jsp");
               }
            }    
 }
 catch(Exception e){
   out.print(e);
   }
   %>