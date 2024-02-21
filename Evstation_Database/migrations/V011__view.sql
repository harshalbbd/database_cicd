create VIEW User_And_Station_info_using_feedback_View
AS
SELECT
    u.UserID,
    u.FirstName ,
    u.LastName,
    u.EmailID,
    f.Description,
	f.Rating,
	f.Date,
    s.StationID,
    s.Name
FROM
    Users u
INNER JOIN
    StationFeedbacks f ON u.UserID = f.UserID
INNER JOIN
    ChargingStations s ON f.StationID = s.StationID;

-- select * from User_And_Station_info_using_feedback_View;