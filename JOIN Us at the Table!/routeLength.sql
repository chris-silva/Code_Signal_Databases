CREATE PROCEDURE routeLength()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT ROUND(
    SUM( ST_Distance( POINT(x, y), 
    (
        SELECT POINT(c2.x, c2.y) FROM cities c2 WHERE c2.id > c1.id ORDER BY c2.id LIMIT 1     
    )
    )
    )
    , 9)
    AS total FROM cities c1;
END