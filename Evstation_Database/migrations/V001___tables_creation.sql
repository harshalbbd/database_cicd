--create the User table
 
CREATE TABLE Users (
  UserID INT IDENTITY(1,1) PRIMARY KEY,
  FirstName VARCHAR(25) NOT NULL,
  LastName VARCHAR(25) NOT NULL,
  EmailID varchar(25) UNIQUE NOT NULL
);

--creating table contact Details
CREATE TABLE UserContactDetails(
  ContactID int identity(1,1) Primary key,
  UserID INT NOT NULL,
  MobileNumber varchar(15) NOT NULL  
);
--create the Timing table

CREATE TABLE BookingTimeSlots (
  TimeSlotID INT IDENTITY(1,1)PRIMARY KEY,
  StartTime TIME NOT NULL,
  EndTime TIME NOT NULL
);


---create the Station table

CREATE TABLE ChargingStations (
  StationID INT IDENTITY(1,1) PRIMARY KEY,
  Name VARCHAR(25)  NOT NULL,
  EmailID VARCHAR(25) UNIQUE NOT NULL,
  Password VARCHAR(25) NOT NULL,
  Latitude FLOAT NOT NULL,
  Longitude FLOAT NOT NULL,
  OpenTime TIME NOT NULL,
  CloseTime TIME NOT NULL, 
  RatePerHour  MONEY NOT NULL
);

--create the slot table

CREATE TABLE ChargingStationSlots (
  SlotID INT IDENTITY(1,1) PRIMARY KEY,
  StationID INT NOT NULL,
);

--create feedback table

CREATE TABLE StationFeedbacks (
  FeedbackID INT IDENTITY(1,1) PRIMARY KEY,
  UserID INT NOT NULL,
  Description VARCHAR(150),
  Rating INT check (Rating<=5 AND Rating>0 ),
  StationID INT NOT NULL,
  Date DATE DEFAULT(GETDATE()) 
);


--creating booking table

CREATE TABLE SlotsBookings(
  BookingID INT IDENTITY(1,1)PRIMARY KEY,
  StatusID INT NOT NULL,
  SlotBookingDate DATE NOT NULL,
  SlotID INT NOT NULL,
  StationID INT NOT NULL,
  TimeSlotID INT NOT NULL,
  UserID INT NOT NULL,
);

CREATE TABLE BookingStatus(
  StatusID INT IDENTITY(1,1) PRIMARY KEY,
  Status VARCHAR(25) NOT NULL
);

