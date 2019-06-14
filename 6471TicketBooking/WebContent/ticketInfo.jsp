<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ticket Details</title>
<link rel="stylesheet" href="../css/style.css" type="text/css"></link
</head>
<body>

Hi ${user}




Your Ticket Details for ${ticket.movieName} on ${ticket.date} at ${ticket.time}
<table>

<td>Number of Tickets: </td>
<td>${ticket.numberOfTickets} </td>
</tr>

<tr>
<td>Price for both Tickets </td>
<td>${ticket.price}</td>
</tr>


<tr>
<td>Seat Numbers</td>
<td>${ticket.seatNumbers}</td>
</tr>

</table>
</body>
</html>