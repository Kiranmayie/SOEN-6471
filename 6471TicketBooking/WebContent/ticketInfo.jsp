<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Details</title>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link>
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

<font color="blue"><h2>Congrats ${user} </h2></font></br>
<h3>Your Ticket has been booked for ${ticket.movieName} on ${ticket.date} at ${ticket.time}</h3>>
<table>

<td><h3>Number of Tickets: </h3></td>
<td><h3>${ticket.numberOfTickets} </h3></td>
</tr>

<tr>
<td><h3>Price for both Tickets </h3></td>
<td><h3>${ticket.price}</h3></td>
</tr>


<tr>
<td><h3>Seat Numbers</h3></td>
<td><h3>${ticket.seatNumbers}</h3></td>
</tr>

</table>
</body>
</html>