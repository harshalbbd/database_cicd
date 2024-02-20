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
        s.slot_id,
        s.station_id
    FROM 
        Slots s
    WHERE 
        s.slot_id NOT IN (
            SELECT 
                b.slot_id
            FROM 
                Booking b
            INNER JOIN 
                Timing t ON b.time_id = t.timing_id
            WHERE 
                b.booking_date = @Date
                AND t.timing_id = @TimeSlot
        )
);


--SELECT * FROM GetAvailableSlots('2024-02-18',10);