<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@ page import="java.sql.*"%>

<%
  String usernm=request.getParameter("usernm");
  String mail=request.getParameter("mail");
%> 


<html>
<head><title>Password</title></head>
<body>
    <%
        try{
        	Class.forName("com.mysql.jdbc.Driver");
        	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/goroam","root","tiger");
        	Statement stmt=con.createStatement();
        	ResultSet rs=stmt.executeQuery("select * from signup where username='"+usernm+"' && email='"+mail+"'");
        
    %>
    
    <table border="4">
        <% while(rs.next()) { %>
    <tr><td>Your Password</td></tr>
    <tr><td><%=rs.getString(6)%></td>
    </tr>
    <%} %>
    <% 
        rs.close();
        stmt.close();
        con.close();
        }
    catch(Exception e){
    %>
    <% out.print(e);} %>
    </table>
    </body>
    </html>
    