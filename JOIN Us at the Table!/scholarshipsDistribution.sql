CREATE PROCEDURE scholarshipsDistribution()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT candidate_id AS studend_id
    FROM candidates c
    LEFT JOIN detentions d ON c.candidate_id = d.student_id 
    WHERE d.student_id IS NULL 
    ORDER BY student_id ASC;
END