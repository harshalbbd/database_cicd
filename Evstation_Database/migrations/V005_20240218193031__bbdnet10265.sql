 --trigger for the the time between working hours of pump
CREATE TRIGGER CheckBookingTime
ON Booking
AFTER INSERT, UPDATE
AS
BEGIN
    DECLARE @StationOpenTime int;
    DECLARE @StationCloseTime int;

   
    SELECT @StationOpenTime = s.open_time, @StationCloseTime = s.close_time
    FROM inserted i
    INNER JOIN Station s ON i.station_id = s.station_id;
    IF EXISTS (
        SELECT 1
        FROM inserted i
        WHERE NOT EXISTS (
            SELECT 1
            FROM Timing t
            WHERE i.time_id = t.timing_id
            AND t.start_time >= @StationOpenTime
            AND t.end_time <= @StationCloseTime
        )
    )
    BEGIN
        RAISERROR ('The booking time does not between the station open and close times.', 16, 1);
        ROLLBACK TRANSACTION;
        RETURN;
    END;
END;
