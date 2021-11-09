CREATE PROCEDURE holidayEvent()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    SET @x := 0;
    #SELECT *
    SELECT DISTINCT buyer_name AS winners
    #FROM (SELECT (@x:=@x+1) AS x, p .  * FROM purchases p ) alias
    FROM (SELECT (@x:=@x+1) AS x, timestamp, buyer_name FROM purchases ) alias
    WHERE x MOD 4 = 0
    ORDER BY winners ASC
    ;
    
END