ALTER TABLE Users
ALTER COLUMN user_Mno VARCHAR(10);


ALTER TABLE Slots
ADD CONSTRAINT FK_on_slot
FOREIGN KEY (station_id) REFERENCES Station(station_id);

ALTER TABLE feedback
ADD CONSTRAINT FK_on_feedback
FOREIGN KEY (station_id) REFERENCES Station(station_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id) ;



ALTER TABLE Booking
ADD CONSTRAINT FK_on_booking
FOREIGN KEY (station_id) REFERENCES Station(station_id),
FOREIGN KEY (user_id) REFERENCES Users(user_id),
FOREIGN KEY (time_id) REFERENCES Timing(timing_id),
FOREIGN KEY(slot_id) REFERENCES Slots(slot_id);