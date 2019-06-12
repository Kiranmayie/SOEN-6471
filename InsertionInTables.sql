  INSERT INTO movie_table.User_Info (Fname, Lname, Email_id, mpassword, contact)
   VALUES
   ('sam','smith', 'sam.smith@gmail.com', 'S@45', '514347653'),
   ('sara',' liam',' sara-liam@gmail.com',' li-sa5', '438184765'),
   ('john', 'miller', 'john-mm@gmail.com', '452@11', '438659656'),
   ('sabrina', 'davis', 'sabri.davis@hotmail.com', '33210', '514753884');

   INSERT INTO movie_table.Admin_Info (Fname, Lname, Email_id, mpassword)
   VALUES 
   ('olivia', 'brown', 'olivia.brown@hotmamil.com', 'BB167'),
   ('harry',' wilson', 'harry_wilson@gmail.com',' rry.54');
  
INSERT INTO movie_table.Movie_Info (Name_of_movie, Movie_length,mDescription)
   VALUES 
   ('boss baby', 1, 'comedy'),
   ('on spring night', 2, 'drama'),
   ('the twilight', 3, 'horror movie'),
   ('bay watch', 2, 'action');


INSERT INTO movie_table.Screen (Movie_Id)
   VALUES 
   ('2'),
   ('4'),
   ('1'),
   ('3');
 
  
  INSERT INTO movie_table.Showtime (Screen_Id, Movie_Id)
   VALUES
   ( '3', '1'),
   ('4', '3'),
   ('2', '4'),
   ('1', '2');
  
INSERT INTO movie_table.Seat (Movie_Id, Screen_Id) values
(1,3),
(4,3),
(2,4),
(1,2);
   

 
  INSERT INTO movie_table.Booking_Info (user_Id, Showtime_Id, Seat_Id, Movie_Id, Screen_Id)
   VALUES
   ('5', '4', '2', '2', '1'),
   ('5', '4', '3', '2', '1'),
   ('7', '3', '1', '4', '2'),
   ('7', '3', '4', '4', '2');
 
 INSERT INTO movie_table.Credit_info (credit_number, mtype,expDate, Booking_Id, Movie_Id, user_Id)
   VALUES
   ('981045233702851','mastercard', '11.2020', 6,2,5),
   ('308124082513198','visa', '08.2019','6','4','5'),
   ('151532346757842','visa', '02.2020', '7', '1', '8'),
   ('853005178730916','mastercard', '01.2020', '8', '1', '8');
   
   
   insert into movie_table.schedule_info(Booking_Id,Admin_Id) values 
(5,1),
(6,1),
(7,2),
(8,2);

