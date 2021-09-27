CREATE PROCEDURE placesOfInterestPairs()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    SELECT s1.name AS place1, s2.name AS place2
FROM sights s1
JOIN sights s2 ON s1.name < s2.name
WHERE ST_Distance(
    point(s1.x, s1.y),
    point(s2.x, s2.y)
)     < 5
AND ST_Distance(
    point(s1.x, s1.y),
    point(s2.x, s2.y)
    )
    > 0
ORDER BY s1.name, s2.name
;
    
END