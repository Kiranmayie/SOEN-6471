<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
<meta charset="ISO-8859-1">
<title>Admin</title>
</head>
<body>
<div class="bgimg">
  <div class="topleft">
   
  </div>
  <div class="middle">
    <h1>TICKET MANAGEMENT SYSTEM</h1>
    <hr>
     </div>

</div>
</br>
<table>
 <form action="AdminServlet" method="post">
 
   <tr>
    <td><label>Enter Movie Name</label></td>
    <td><input type="text" id="movieName" name="movieName"></td>
     </tr>
     
      <tr>
    <td><label>Enter Movie Description</label></td>
    <td><input type="text" id="description" name="description"></td>
     </tr>
     
     
      <tr>
    <td><label>Enter Movie Length in Hours</label></td>
    <td><input type="text" id="movieLength" name="movieLength"></td>
     </tr>
 
 <tr><td><input type="submit" value="ADD A MOVIE"  ></td></tr>
 
 </form>
 </table>
</body>
</html>