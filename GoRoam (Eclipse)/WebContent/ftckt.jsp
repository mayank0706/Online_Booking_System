<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%
   String nm=request.getParameter("nm");
   String con=request.getParameter("con");
   String date=request.getParameter("date");
   String from=request.getParameter("from");
   String to=request.getParameter("to");
   
   %>
   
   <html>
<head><title>Flights Page</title>
  <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="w3.css">
   <body>
   
     <div class="w3-container ">
   <h1 style="color:Orange;">GoRoam</h1>
</div>
   
    <%
   try{
   	Class.forName("com.mysql.jdbc.Driver");
   	Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/goroam","root","tiger");
   	Statement stmt=conn.createStatement();
   	ResultSet rs=stmt.executeQuery("select * from flight where frm='"+from+"' && dest='"+to+"'");
   
   %>      
   
    <div class="w3-container w3-text-white">
<table class="w3-table w3-red">
    <tr>
      <th>Name</th>
      <th>Contact</th>
      <th>Date</th>
      <th>Bus No.</th>
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
     
     
     
      <td><%out.print(nm); %>
      <td><%out.print(con); %>
      <td><%out.print(date); %>
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
   
   
   </body>