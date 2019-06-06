Create table User_Info (
  user_Id integer IDENTITY(1,1) PRIMARY KEY,
  Fname varchar(20) not null,
  Lname  varchar(20),
  Email_id  varchar(50) not null,
  password varchar(20) not null,
  contact int(10),
   CONSTRAINT Fname_email UNIQUE (Fname,Email_id)
  
  )
  
 Create table Admin_Info (
   Admin_Id integer IDENTITY(1,1) PRIMARY KEY,
  Fname varchar(20) not null,
  Lname  varchar(20),
  Email_id  varchar(50) not null,
  password varchar(20) not null,
  contact int(10),
   CONSTRAINT Fname_email UNIQUE (Fname,Email_id)
  )
   
  Create table Movie_Info (
     Movie_Id integer IDENTITY(1,1) PRIMARY KEY,
    Name_of_movie varchar(20) not null,
    Description varchar(50),
    Movie_length int,
      CONSTRAINT mID_nameMov UNIQUE (Movie_Id,Name_of_movie)
  )
  
 
  
  Create table Screen(
     Screen_Id integer IDENTITY(1,1) PRIMARY KEY,
    Movie_Id int,
	FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id)
  )
  
  Create table Showtime (
    Screen_Id int,
    Movie_Id int,
      Showtime_Id integer IDENTITY(1,1) PRIMARY KEY,
   
	FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
   
	FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id)
  )
  
   Create table Seat(
     Movie_Id int,
	 Screen_Id int,
     Seat_Id integer IDENTITY(1,1) PRIMARY KEY,
	FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
	FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id)
  )
  
   Create table Booking_Info (
    Screen_Id int,
	 Movie_Id int,
	 Seat_Id int,
	 Showtime_Id int,
	  user_Id int,
     Booking_Id Bookinginteger IDENTITY(1,1) PRIMARY KEY,
	FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
	FOREIGN KEY(Screen_Id) REFERENCES Screen(Screen_Id)  
	  FOREIGN KEY(Seat_Id) REFERENCES Seat(Seat_Id),  
	  FOREIGN KEY(Showtime_Id) REFERENCES Showtime(Showtime_Id),
	  FOREIGN KEY(user_Id) REFERENCES User_Info(user_Id)
     
  )
  
  create table Credit_info(
credit_Id integer IDENTITY(1,1) PRIMARY KEY,
 credit_number integer(20) ,
  type varchar(10),
  expDate varchar(10),
  Booking_Id varchar(10),
   Movie_Id int,
     user_Id int,
  FOREIGN KEY(Booking_Id) REFERENCES Booking_Info(Booking_Id),
	FOREIGN KEY(Movie_Id) REFERENCES Movie_Info(Movie_Id),
	  FOREIGN KEY(user_Id) REFERENCES User_Info(user_Id)
)
