CREATE PROCEDURE GetStationBookings
    @StationID INT
AS
BEGIN
    SET NOCOUNT ON;

    SELECT b.BookingID AS BookingID, 
           b.SlotBookingDate, 
           bs.Status AS Status, -- Include Status from BookingStatus table
           b.SlotID AS slot_id,
           u.UserID AS user_id, 
           u.FirstName AS FirstName, 
           u.LastName AS LastName, 
           u.EmailID AS EmailID, 
           uc.MobileNumber AS MobileNumber,
           t.StartTime AS StartTime, 
           t.EndTime AS EndTime
    FROM SlotsBookings b
    INNER JOIN Users u ON b.UserID = u.UserID
    INNER JOIN ChargingStationSlots s ON b.SlotID = s.SlotID
    INNER JOIN BookingTimeSlots t ON b.TimeSlotID = t.TimeSlotID
    INNER JOIN BookingStatus bs ON b.StatusID = bs.StatusID
	INNER JOIN UserContactDetails uc ON u.UserID=uc.UserID -- Join with BookingStatus table
    WHERE s.StationID = @StationID;
END;


--EXEC GetStationBookings @StationID = 1;