
CREATE PROCEDURE projectsTeam()
BEGIN
	SELECT DISTINCT name AS name
    FROM projectLog
    ORDER BY name ASC;
END