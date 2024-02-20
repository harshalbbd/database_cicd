INSERT INTO Users (user_Fname, user_Lname, user_email, user_Mno)
VALUES
('John', 'Doe', 'john@example.com', '9966556688'),
('Jane', 'Smith', 'jane@example.com', '7564362511'),
('Michael', 'Johnson', 'michael@example.com', '7788995514'),
('Emily', 'Brown', 'emily@example.com', '7869649392'),
('David', 'Wilson', 'david@example.com', '9988776655'),
('Sarah', 'Williams', 'sarah@example.com', '6789012345'),
('Daniel', 'Taylor', 'daniel@example.com', '7890123456'),
('Emma', 'Martinez', 'emma@example.com', '8901234567'),
('James', 'Anderson', 'james@example.com', '9012345678'),
('Olivia', 'Harris', 'olivia@example.com', '7867564534');


INSERT INTO Station (station_name, station_email, station_pass, lattitude, longitude, open_time, close_time)
VALUES
('Station A', 'stationA@example.com', 'password123', 40.7128, -74.0060, 8, 18),
('Station B', 'stationB@example.com', 'password456', 34.0522, -118.2437, 9, 19),
('Station C', 'stationC@example.com', 'password789', 51.5074, -0.1278, 0, 24),
('Station D', 'stationD@example.com', 'password123', 52.5200, 13.4050, 10, 22),
('Station E', 'stationE@example.com', 'password456', 48.8566, 2.3522, 0, 24);

INSERT INTO Timing(start_time,end_time)
VALUES
(0,1),(1,2),(2,3),(3,4),(4,5),(5,6),
(6,7),(7,8),(8,9),(9,10),(10,11),
(11,12),(12,13),(13,14),(14,15),
(15,16),(16,17),(17,18),(18,19),(19,20),
(20,21),(21,22),(22,23),(23,24);


INSERT INTO Slots (station_id)
VALUES
(1), (1),
(2), (2),
(3), (3),
(4), (4),
(5), (5);


INSERT INTO Booking (booking_date, booking_status, slot_id, station_id, time_id, user_id)
VALUES
('2024-02-18', 'Confirmed', 1, 1, 10, 1),
('2024-02-18', 'Confirmed', 2, 3, 18, 1),
('2024-02-18', 'Confirmed', 3, 4, 20, 1),
('2024-02-18', 'Confirmed', 4, 5, 23, 1),
('2024-02-18', 'Confirmed', 5, 3, 3, 1),
('2024-02-18', 'Confirmed', 6, 5, 7, 2),
('2024-02-18', 'Confirmed', 7, 5, 9, 2),
('2024-02-18', 'Confirmed', 8, 3, 2, 2),
('2024-02-18', 'Confirmed', 9, 5, 5, 2),
('2024-02-18', 'Confirmed', 10, 5, 6, 2);



INSERT INTO feedback (feedback, feedback_rating, station_id, user_id)
VALUES
('Great service!', 2, 1, 1),
('Could be better', 5, 2, 2),
('Excellent experience', 5, 3, 3),
('Average', 5, 1, 4),
('Fantastic!', 3, 2, 5),
('Poor service', 2, 3, 6),
('Amazing!', 1, 1, 7),
('Could improve', 0, 2, 8),
('Satisfactory', 2, 3, 9),
('Best service ever', 3, 1, 10);
