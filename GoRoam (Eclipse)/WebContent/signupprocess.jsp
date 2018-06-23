<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*,java.util.*"%>

<%
    String user_id=request.getParameter("id");
    String name=request.getParameter("name");
    String con=request.getParameter("contact");
    String mail=request.getParameter("mail");
    String usernm=request.getParameter("usernm");
    String pass=request.getParameter("pass");
    
    String connectionURL="jdbc:mysql://localhost:3306/goroam";
 Connection connection=null;
 PreparedStatement pstatement=null;
 Class.forName("com.mysql.jdbc.Driver");
 int updateQuery=0;
 connection=DriverManager.getConnection(connectionURL,"root","tiger");
 String queryString="insert into signup values(?,?,?,?,?,?)";
 pstatement=connection.prepareStatement(queryString);
 pstatement.setString(1,user_id);
 pstatement.setString(2,name);
 pstatement.setString(3,con);
 pstatement.setString(4,mail);
 pstatement.setString(5,usernm);
 pstatement.setString(6,pass);
 updateQuery=pstatement.executeUpdate();
  
  try
  { if(updateQuery!=0){
 
     response.sendRedirect("Login.jsp");
  }
  }
   catch(Exception e)
   {
	   System.out.print(e);
	   
   }
  
  finally
  {
	  pstatement.close();
	  connection.close();
  }
  %>
  
 