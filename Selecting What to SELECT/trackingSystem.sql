CREATE PROCEDURE trackingSystem()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    
    SELECT anonymous_id as anonym_id,
    (
        SELECT event_name
        FROM tracks
        WHERE anonym_id = anonymous_id AND user_id IS NULL
        ORDER BY received_at DESC
        LIMIT 1
    ) AS last_null
    ,
    (
        SELECT event_name
        FROM tracks
        WHERE anonym_id = user_id
        ORDER BY received_at ASC
        LIMIT 1
    ) AS first_notnull
    
    FROM tracks
    GROUP BY anonym_id
    ORDER BY anonym_id
    
    ;
END