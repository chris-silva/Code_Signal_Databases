CREATE PROCEDURE importantEvents()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT id, name, event_date, participants FROM events
    ORDER BY (DAYOFWEEK(event_date) + 5 ) % 7, participants DESC
    ;
END