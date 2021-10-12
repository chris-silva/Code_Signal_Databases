CREATE PROCEDURE sunnyHolidays()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT holiday_date AS ski_date FROM holidays 
    WHERE EXISTS (
        SELECT sunny_date FROM weather WHERE holidays.holiday_date = sunny_date
    ) 
    ORDER BY ski_date ASC;
END