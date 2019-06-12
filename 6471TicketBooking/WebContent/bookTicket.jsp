<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker();
  } );
  </script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="sidenav">
         <div class="login-main-text">
            <h2>Ticket Management System<br> User page</h2>
            <p>Please select movie name, date and time</p>
         </div>
      </div>
      <div class="user">
         <div class="row">
            <div class="user selection">
               <form action="BookingServlet" method="post">
                  <div class="details">
                     <label>Movie</label>
                     <select name="movies" onchange="getSelectedValue();">
                         <option value="boss baby">boss baby</option>
                         <option value="007">007</option>
                     </select>
                     <br>
                     <label>Time</label>
                     <select name="Time">
                         <option value="4:00 PM">4:00 PM</option>
                         <option value="8:10 PM">8:10 PM</option>
                     </select>
                     <br>
                     <label>date</label>
                    <input type="text" id="datepicker" name="date">
                    <input type="text" id="SeatNumber" name="seat">
                    
                    
                   </div>
                  <button type="Print Receipt" class="btn btn-black">SUBMIT</button>	
                  <script>
                      function getSelectedValue(){
                          var moviename = document.getElementById("movies").value;
                          var time = document.getElementById("Time").value;
                          var date = document.getElementById("date").value;
                          
                      }
                   </script>
                  
               </form>
            </div>
         </div>
      </div>
</body>
</html>