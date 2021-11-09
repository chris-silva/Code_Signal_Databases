CREATE PROCEDURE consecutiveIds()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    set @i = 0;
    
    SELECT id
     AS oldId,
    (
        SELECT @i:=@i+1
    ) AS newId
    FROM itemIds
    ;
END