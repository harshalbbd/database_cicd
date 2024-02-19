--create the User table
 
CREATE TABLE Users (
  user_id int identity(1,1) Primary key,
  user_Fname varchar(25) NOT NULL,
  user_Lname varchar(25) NOT NULL,
  user_email varchar(25) NOT NULL unique,
  user_Mno int NOT NULL,
);
--create the Timing table

CREATE TABLE Timing (
  timing_id int identity(1,1)primary key,
  start_time int NOT NULL,
  end_time int NOT NULL,
);


---create the Station table

CREATE TABLE Station (
  station_id int identity(1,1) Primary key,
  station_name varchar(25) NOT NULL,
  station_email varchar(25) NOT NULL,
  station_pass varchar(25) NOT NULL,
  lattitude float NOT NULL,
  longitude float NOT NULL,
  open_time int NOT NULL,
  close_time int NOT NULL, 
);

--create the slot table

CREATE TABLE Slots (
  slot_id int identity(1,1) primary key,
  station_id int NOT NULL,
  );

--create feedback table

CREATE TABLE feedback (
  feedback_id int identity(1,1) primary key,
  feedback varchar(100) NOT NULL,
  feedback_rating int NOT NULL check (feedback_rating>6),
  station_id int NOT NULL,
  user_id int NOT NULL 
);


--creating booking table

CREATE TABLE Booking(
  booking_id int identity(1,1)primary key,
  booking_date date NOT NULL,
  booking_status varchar(25) NOT NULL,
  slot_id int NOT NULL,
  station_id int NOT NULL,
  time_id int NOT NULL,
  user_id int NOT NULL
);
