
<!DOCTYPE html>
<html>
<font color="blue">TICKET BOOKING SYSTEM </font><br><br>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>USER LOGIN PAGE</title>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
<script language="JavaScript" type="text/JavaScript" 
src="../script/validate.js"></script>
<h1>USER LOGIN PAGE</h1>
</head>
<body>
 <table border = "0">
  <tr align="left" valign="top">
  <form action="LoginServlet" method="post">
  <tr><td><div style="color: #FF0000;"> <span class="error">${message}</span></div><br></td></tr>

  
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