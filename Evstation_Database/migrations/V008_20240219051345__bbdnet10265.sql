--create a view for show the user, station information using feedback table	
    
    ALTER VIEW User_And_Station_info_using_feedback_View
AS
SELECT
    u.user_id,
    u.user_Fname,
    u.user_Lname,
    u.user_email,
    f.feedback_id,
    f.feedback,
	f.feedback_rating,
    s.station_id,
    s.station_name
FROM
    Users u
INNER JOIN
    feedback f ON u.user_id = f.user_id
INNER JOIN
    Station s ON f.station_id = s.station_id;

-- select * from User_And_Station_info_using_feedback_View;