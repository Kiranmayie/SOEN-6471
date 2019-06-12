create database movie_table;
 
Create table movie_table.User_Info (
  user_Id integer auto_increment ,
  Fname varchar(20) not null,
  Lname  varchar(20),
  Email_id  varchar(50) UNIQUE not null,
  mpassword varchar(20) not null,
  contact integer(10),
   PRIMARY KEY (user_Id)
  )
  ;

 Create table movie_table.Admin_Info (
   Admin_Id integer auto_increment ,
  Fname varchar(20) not null,
  Lname  varchar(20),
  Email_id  varchar(50) UNIQUE not null,
  mpassword varchar(20) not null,
   PRIMARY KEY (Admin_Id)
  );
   

  Create table movie_table.Movie_Info (
     Movie_Id integer auto_increment ,
    Name_of_movie varchar(20) not null,
    mDescription varchar(50),
    Movie_length int,
      PRIMARY KEY (Movie_Id)
  );



  Create table movie_table.Screen(
     Screen_Id integer auto_increment ,
    Movie_Id int,
FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
    PRIMARY KEY (Screen_Id)
  );

  Create table movie_table.Showtime (
    Screen_Id int,
    Movie_Id int,
      Showtime_Id integer auto_increment ,

FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),

FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id),
    PRIMARY KEY (Showtime_Id)
  )
  ;
   Create table movie_table.Seat(
     Movie_Id int,
Screen_Id int,
     Seat_Id integer auto_increment ,
FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id),
    PRIMARY KEY (Seat_Id)
  );

   Create table movie_table.Booking_Info (
    Screen_Id int,
Movie_Id int,
Seat_Id int,
Showtime_Id int,
  user_Id int,
     Booking_Id integer auto_increment ,
FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id)  ,
  FOREIGN KEY(Seat_Id) REFERENCES Seat(Seat_Id),
  FOREIGN KEY(Showtime_Id) REFERENCES Showtime(Showtime_Id),
  FOREIGN KEY(user_Id) REFERENCES User_Info(user_Id),
      PRIMARY KEY (Booking_Id )

  );

  create table movie_table.Credit_info(
credit_Id integer auto_increment ,
 credit_number integer(20) ,
  mtype varchar(10),
  expDate varchar(10),
  Booking_Id integer,
   Movie_Id int,
     user_Id int,
  FOREIGN KEY(Booking_Id) REFERENCES Booking_Info(Booking_Id),
FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
  FOREIGN KEY(user_Id) REFERENCES User_Info(user_Id),
      PRIMARY KEY (credit_Id)
)
;
