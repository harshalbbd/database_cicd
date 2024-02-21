--create procedure for getting the station bookings


CREATE PROCEDURE GetStationBookings
    @StationID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT b.Booking_ID AS BookingID, 
           b.SlotBookingDate, 
           bs.Status AS Status, -- Include Status from BookingStatus table
           b.SlotID AS slot_id,
           u.UserID AS user_id, 
           u.FirstName AS user_Fname, 
           u.LastName AS user_Lname, 
           u.EmailID AS user_email, 
           uc.MobileNumber AS user_Mno,
           t.StartTime AS start_time, 
           t.EndTime AS end_time
    FROM SlotsBookings b
    INNER JOIN Users u ON b.UserID = u.UserID
    INNER JOIN ChargingStationSlots s ON b.SlotID = s.SlotID
    INNER JOIN BookingTimeSlots t ON b.TimeSlotID = t.TimeSlotID
    INNER JOIN BookingStatus bs ON b.StatusID = bs.StatusID
	INNER JOIN UserContactDetails uc ON u.UserID=uc.UserID -- Join with BookingStatus table
    WHERE s.StationID = @StationID;
END;


--EXEC GetStationBookings @StationID = 1;