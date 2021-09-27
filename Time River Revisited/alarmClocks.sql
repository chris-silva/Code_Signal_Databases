CREATE PROCEDURE alarmClocks()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
   
SET @newDate = (SELECT * FROM userInput LIMIT 1);
SET @currentYear = YEAR(@newDate);
SET @nextYear = @currentYear + 1;

SELECT @newDate AS alarm_date;

SET @newDate = DATE_ADD(@newDate, INTERVAL 1 WEEK);
SET @currentYear = YEAR(@newDate);


WHILE ( @currentYear < @nextYear ) DO

    SELECT @newDate AS '';
    SET @newDate = DATE_ADD(@newDate, INTERVAL 1 WEEK);
    SET @currentYear = YEAR(@newDate);
    
END WHILE;

END