--trigger for the the time between working hours of Station
CREATE TRIGGER CheckBookingTime_Is_In_Working_Hour
ON SlotsBookings
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @StationOpenTime TIME;
    DECLARE @StationCloseTime TIME;

   
    SELECT @StationOpenTime = s.OpenTime, @StationCloseTime = s.CloseTime
    FROM inserted i
    INNER JOIN ChargingStations s ON i.StationID = s.StationID;
    IF EXISTS (
        SELECT 1
        FROM inserted i
        WHERE NOT EXISTS (
            SELECT 1
            FROM BookingTimeSlots t
            WHERE i.TimeSlotID = t.TimeSlotID
            AND t.StartTime >= @StationOpenTime
            AND t. EndTime <= @StationCloseTime
        )
    )
    BEGIN
        RAISERROR ('The booking time does not between the station open and close times.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;
