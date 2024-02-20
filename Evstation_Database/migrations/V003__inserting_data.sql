INSERT INTO Users (FirstName, LastName, EmailID) 
VALUES
('John', 'Doe', 'john@example.com'),
('Jane', 'Smith', 'jane@example.com'),
('Alice', 'Johnson', 'alice@example.com'),
('Bob', 'Williams', 'bob@example.com'),
('Charlie', 'Brown', 'charlie@example.com'),
('David', 'Lee', 'david@example.com'),
('Emily', 'Davis', 'emily@example.com'),
('Frank', 'Wilson', 'frank@example.com'),
('Grace', 'Anderson', 'grace@example.com'),
('Henry', 'Martinez', 'henry@example.com');


INSERT INTO UserContactDetails (UserID, MobileNumber) 
VALUES
(1, '1234567890'),
(2, '2345678901'),
(3, '3456789012'),
(4, '4567890123'),
(5, '5678901234'),
(6, '6789012345'),
(7, '7890123456'),
(8, '8901234567'),
(9, '9012345678'),
(10, '0123456789');

INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('00:00:00', '01:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('01:00:00', '02:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('02:00:00', '03:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('03:00:00', '04:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('04:00:00', '05:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('05:00:00', '06:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('06:00:00', '07:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('07:00:00', '08:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('08:00:00', '09:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('09:00:00', '10:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('10:00:00', '11:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('11:00:00', '12:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('12:00:00', '13:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('13:00:00', '14:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('14:00:00', '15:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('15:00:00', '16:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('16:00:00', '17:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('17:00:00', '18:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('18:00:00', '19:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('19:00:00', '20:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('20:00:00', '21:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('21:00:00', '22:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('22:00:00', '23:00:00');
INSERT INTO BookingTimeSlots (StartTime, EndTime) VALUES ('23:00:00', '24:00:00');

INSERT INTO ChargingStations (Name, EmailID, Password, Latitude, Longitude, OpenTime, CloseTime, RatePerHour) 
VALUES
('Station 1', 'station1@example.com', 'password1', 40.7128, -74.0060, '08:00:00', '18:00:00', 10.00),
('Station 2', 'station2@example.com', 'password2', 34.0522, -118.2437, '09:00:00', '19:00:00', 12.00),
('Station 3', 'station3@example.com', 'password3', 51.5074, -0.1278, '10:00:00', '20:00:00', 15.00),
('Station 4', 'station4@example.com', 'password4', 48.8566, 2.3522, '07:00:00', '17:00:00', 11.00),
('Station 5', 'station5@example.com', 'password5', 41.8781, -87.6298, '08:30:00', '18:30:00', 10.50);



INSERT INTO ChargingStationSlots (StationID)
VALUES 
(1),(1),
(2),(2),
(3),(3),
(4),(4),
(5),(5);


INSERT INTO StationFeedbacks (UserID, Description, Rating, StationID)
VALUES
(1, 'Good service', 4, 1),
(2, 'Excellent facilities', 5, 2),
(3, 'Average experience', 3, 3),
(4, 'Needs improvement', 2, 4),
(5, 'Very satisfied', 5, 5),
(6, 'Friendly staff', 4, 4),
(7, 'Clean environment', 5, 3),
(8, 'Prompt service', 4, 2),
(9, 'Convenient location', 5, 1),
(10, 'Not satisfied', 1, 5);



INSERT INTO BookingStatus(Status) 
VALUES 
('CONFIRMED'),('CANCELLED');

INSERT INTO SlotsBookings (StatusID, SlotBookingDate, SlotID, StationID, TimeSlotID, UserID) VALUES
(1, '2024-02-20', 1, 1, 10, 1),
(2, '2024-02-21', 2, 1, 17, 2),
(1, '2024-02-22', 6, 3, 19, 3),
(2, '2024-02-22', 4, 2, 7, 4),
(1, '2024-02-23', 7, 4, 9, 5);