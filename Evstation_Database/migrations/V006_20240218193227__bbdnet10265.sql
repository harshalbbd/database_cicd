--create procedure for getting the station bookings


CREATE PROCEDURE GetStationBookings
    @StationID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT b.booking_id, b.booking_date, b.booking_status,b.slot_id,
           u.user_id, u.user_Fname, u.user_Lname, u.user_email, u.user_Mno,
           t.start_time, t.end_time
    FROM Booking b
    INNER JOIN Users u ON b.user_id = u.user_id
    INNER JOIN Slots s ON b.slot_id = s.slot_id
    INNER JOIN Timing t ON b.time_id = t.timing_id
    WHERE s.station_id = @StationID;
END;

--EXEC GetStationBookings @StationID = 1;
