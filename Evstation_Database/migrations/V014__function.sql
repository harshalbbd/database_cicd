--creating  function that show the available slots for user at time slot

CREATE or alter FUNCTION GetAvailableSlots
(
    @Date DATE,
    @TimeSlot INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT 
        s.SlotID,
        s.StationID
    FROM 
        ChargingStationSlots s
    WHERE 
        s.SlotID NOT IN (
            SELECT 
                b.SlotID
            FROM 
                SlotsBookings b
            INNER JOIN 
                BookingTimeSlots t ON b.TimeSlotID = t.TimeSlotID
            WHERE 
                b.SlotBookingDate = @Date
                AND t.TimeSlotID = @TimeSlot
        )
);