   INSERT INTO User (Fname, Lname, Email_id, Password, contact)
   VALUES
   ('sam','smith', 'sam.smith@gmail.com', 'S@45', '514347653'),
   ('sara',' liam',' sara-liam@gmail.com',' li-sa5', '438184765'),
   ('john', 'miller', 'john-mm@gmail.com', '452@11', '438659656'),
   ('sabrina', 'davis', 'sabri.davis@hotmail.com', '33210', '5147538843');
   
   INSERT INTO Admin_Info (Fname, Lname, Email_id, Password, contact)
   VALUES 
   ('olivia', 'brown', 'olivia.brown@hotmamil.com', 'BB167', '514925314'),
   ('harry',' wilson', 'harry_wilson@gmail.com',' rry.54', '514872735');
   
   INSERT INTO Movie_Info (Name_of_movie, Description, Movie_length)
   VALUES 
   ('boss baby', '1:50', 'comedy'),
   ('on spring night', '2:30', 'drama'),
   ('the twilight', '2:50', 'horror movie'),
   ('bay watch', '1:45', 'action');
   
   INSERT INTO Screen (Movie_Id)
   VALUES 
   ('2'),
   ('4'),
   ('1'),
   ('3');
   
    INSERT INTO Showtime (time, Screen_Id, Movie_Id)
   VALUES
   ('9-12', '3', '1'),
   ('13-16', '4', '3'),
   ('17-20', '2', '4'),
   ('20-23', '1', '2');
   
     INSERT INTO Seat (Showtime, Screen_Id, SeatNumber)
   VALUES
   ('3', '2', '1'),
   ('3', '2', '2'),
   ('3', '2', '3'),
   ('3', '2', '4'),
   ('3', '2', '5'),
   ('3', '2', '6'),
   ('3', '2', '7'),
   ('3', '2', '8'),
   ('3', '2', '9'),
   ('3', '2', '10'),
   ('4', '1','1'),
   ('4', '1','2'),
   ('4', '1','3'),
   ('4', '1','4'),
   ('4', '1','5'),
   ('4', '1','6'),
   ('4', '1','7'),
   ('4', '1','8'),
   ('4', '1','9'),
   ('4', '1','10'),
   ('2', '4', '1'),
   ('2', '4', '2'),
   ('2', '4', '3'),
   ('2', '4', '4'),
   ('2', '4', '5'),
   ('2', '4', '6'),
   ('2', '4', '7'),
   ('2', '4', '8'),
   ('2', '4', '9'),
   ('2', '4', '10'),
   ('1', '3', '1'),
   ('1', '3', '2'),
   ('1', '3', '3'),
   ('1', '3', '4'),
   ('1', '3', '5'),
   ('1', '3', '6'),
   ('1', '3', '7'),
   ('1', '3', '8'),
   ('1', '3', '9'),
   ('1', '3', '10');
   
   
     INSERT INTO Booking_Info (user_Id, Showtime_Id, Seat_Id, Movie_Id, Screen_Id)
   VALUES
   ('3', '4', '12', '2', '1'),
   ('3', '4', '13', '2', '1'),
   ('1', '3', '23', '4', '2'),
   ('1', '3', '24', '4', '2'),
   ('1', '3', '25', '4', '2'),
   ('1', '3', '26', '4', '2'),
   ('2', '1', '35', '1', '3'),
   ('4', '2', '5', '3', '4'),
   ('4', '1', '36', '1', '3'),
   ('1', '4', '18', '2', '1');
   
    INSERT INTO Credit_info (credit_number, expDate, Booking_Id, Movie_Id, user_Id)
   VALUES
   ('3581406728739086', '08.2019', '1', '2', '3'),
   ('9810452337028531', '11.2020', '10','2','1'),
   ('3081240825131981', '08.2019','6','4','1'),
   ('1515323467578421', '02.2020', '9', '1', '4'),
   ('8530051787309161', '01.2020', '7', '1', '2');

      INSERT INTO User (Fname, Lname, Email_id, Password, contact)
   VALUES
   ('sam','smith', 'sam.smith@gmail.com', 'S@45', '514347653'),
   ('sara',' liam',' sara-liam@gmail.com',' li-sa5', '438184765'),
   ('john', 'miller', 'john-mm@gmail.com', '452@11', '438659656'),
   ('sabrina', 'davis', 'sabri.davis@hotmail.com', '33210', '5147538843');
   
   INSERT INTO Admin_Info (Fname, Lname, Email_id, Password, contact)
   VALUES 
   ('olivia', 'brown', 'olivia.brown@hotmamil.com', 'BB167', '514925314'),
   ('harry',' wilson', 'harry_wilson@gmail.com',' rry.54', '514872735');
   
   INSERT INTO Movie_Info (Name_of_movie, Description, Movie_length)
   VALUES 
   ('boss baby', '1:50', 'comedy'),
   ('on spring night', '2:30', 'drama'),
   ('the twilight', '2:50', 'horror movie'),
   ('bay watch', '1:45', 'action');
   
   INSERT INTO Screen (Movie_Id)
   VALUES 
   ('2'),
   ('4'),
   ('1'),
   ('3');
   
    INSERT INTO Showtime (time, Screen_Id, Movie_Id)
   VALUES
   ('9-12', '3', '1'),
   ('13-16', '4', '3'),
   ('17-20', '2', '4'),
   ('20-23', '1', '2');
   
     INSERT INTO Seat (Showtime, Screen_Id, SeatNumber)
   VALUES
   ('3', '2', '1'),
   ('3', '2', '2'),
   ('3', '2', '3'),
   ('3', '2', '4'),
   ('3', '2', '5'),
   ('3', '2', '6'),
   ('3', '2', '7'),
   ('3', '2', '8'),
   ('3', '2', '9'),
   ('3', '2', '10'),
   ('4', '1','1'),
   ('4', '1','2'),
   ('4', '1','3'),
   ('4', '1','4'),
   ('4', '1','5'),
   ('4', '1','6'),
   ('4', '1','7'),
   ('4', '1','8'),
   ('4', '1','9'),
   ('4', '1','10'),
   ('2', '4', '1'),
   ('2', '4', '2'),
   ('2', '4', '3'),
   ('2', '4', '4'),
   ('2', '4', '5'),
   ('2', '4', '6'),
   ('2', '4', '7'),
   ('2', '4', '8'),
   ('2', '4', '9'),
   ('2', '4', '10'),
   ('1', '3', '1'),
   ('1', '3', '2'),
   ('1', '3', '3'),
   ('1', '3', '4'),
   ('1', '3', '5'),
   ('1', '3', '6'),
   ('1', '3', '7'),
   ('1', '3', '8'),
   ('1', '3', '9'),
   ('1', '3', '10');
   
   
     INSERT INTO Booking_Info (user_Id, Showtime_Id, Seat_Id, Movie_Id, Screen_Id)
   VALUES
   ('3', '4', '12', '2', '1'),
   ('3', '4', '13', '2', '1'),
   ('1', '3', '23', '4', '2'),
   ('1', '3', '24', '4', '2'),
   ('1', '3', '25', '4', '2'),
   ('1', '3', '26', '4', '2'),
   ('2', '1', '35', '1', '3'),
   ('4', '2', '5', '3', '4'),
   ('4', '1', '36', '1', '3'),
   ('1', '4', '18', '2', '1');
   
    INSERT INTO Credit_info (credit_number, expDate, Booking_Id, Movie_Id, user_Id)
   VALUES
   ('3581406728739086', '08.2019', '1', '2', '3'),
   ('9810452337028531', '11.2020', '10','2','1'),
   ('3081240825131981', '08.2019','6','4','1'),
   ('1515323467578421', '02.2020', '9', '1', '4'),
   ('8530051787309161', '01.2020', '7', '1', '2');
   

   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
