CREATE PROCEDURE pastEvents()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT name, event_date FROM Events
    WHERE event_date >= (SELECT MAX(event_date) FROM Events) - INTERVAL 7 DAY
    AND
        event_date != (SELECT MAX(event_date) FROM Events)
    ORDER BY event_date DESC
        ;
END