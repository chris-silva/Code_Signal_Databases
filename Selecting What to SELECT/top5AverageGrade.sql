CREATE PROCEDURE top5AverageGrade()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
SELECT
    ROUND( SUM(grade) / 5, 2 ) AS average_grade
FROM
( 
    SELECT grade FROM students ORDER BY grade DESC LIMIT 5
) a
    
 ;
END