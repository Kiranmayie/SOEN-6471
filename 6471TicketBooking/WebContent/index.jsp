<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Booking</title>
</head>
<body>
<table>
  <form action="LoginServlet" method="post">
  
  <tr><td><div style="color: #FF0000;"> <span class="error">${message}</span></div><br></td></tr>
  <tr><td><label>User ID</label></td>
  <td><input type="text"  name="email" /></td></tr>
  <tr><td><label>Password</label></td>
  <td><input type="password" name="password" /></td></tr>
 
  
 <tr><td><input type="submit" value="Login"></td></tr>
 
 </form>
 </table>
</body>
</html>