<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<font color="blue">Please Enter User Name and Password </font><br><br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>TICKET BOOKING</title>
<h1>ADMIN LOGIN PAGE</h1>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
<script language="JavaScript" type="text/JavaScript" 
src="../script/validate.js"></script>
</head>
<body>
  <form action="LoginServlet" method="post">
 <table border = "0">
  <tr align="left" valign="top">
  <td>User Name:</td>
  <td><input type="text" name ="user" class="inputbox"/></td>
  </tr>
  <tr align="left" valign="top">
  <td>Password:</td>
  <td><input type="password" name ="pass" class="inputbox"/></td>
  </tr>
  <tr align="left" valign="top">
  <td></td>
  <td><input type="submit" name="submit" 
  value="submit" class="submitButton"/></td>
  </tr>
  </table>
 </form>
</body>
</html>