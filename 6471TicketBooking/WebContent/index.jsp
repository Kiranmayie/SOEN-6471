<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<font color="blue">TICKET BOOKING SYSTEM </font><br><br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>TICKET BOOKING</title>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
<script language="JavaScript" type="text/JavaScript" 
src="../script/validate.js"></script>
</head>
<body>

<div class="bgimg">
  <div class="topleft">
    <p>WELCOME</p>
  </div>
  <div class="middle">
    <h1>TICKET MANAGEMENT SYSTEM</h1>
    <hr>
   <marquee behavior="scroll" direction="left">HOME PAGE</marquee>
  </div>
  <div class="bottomleft">
    <a href="C:/Users/USER/git/SOEN-6471/6471TicketBooking/WebContent/UserLogin.jsp">USER LOGIN</a>
    <a href="C:/Users/USER/git/SOEN-6471/6471TicketBooking/WebContent/AdminLogin.jsp">ADMIN LOGIN</a>
  </div>
</div>
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