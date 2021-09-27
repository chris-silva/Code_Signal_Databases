CREATE PROCEDURE localCalendar()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT e.event_id,
  CASE 
    WHEN s.hours = 12 THEN DATE_FORMAT( DATE_ADD( e.date, INTERVAL s.timeshift MINUTE), '%Y-%m-%d %h:%i %p')
    WHEN s.hours = 24 THEN DATE_FORMAT( DATE_ADD( e.date, INTERVAL s.timeshift MINUTE), '%Y-%m-%d %H:%i')
  END AS 'formatted_date'
FROM events e
LEFT JOIN settings s ON s.user_id = e.user_id
ORDER BY e.event_id;
    
END