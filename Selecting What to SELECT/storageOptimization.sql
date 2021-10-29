CREATE PROCEDURE storageOptimization()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
      
    SELECT id,  `column_name`, value 
    FROM (
        SELECT id, 'name' as `column_name`, name AS value FROM workers_info WHERE name IS NOT NULL
        UNION
        SELECT id, 'date_of_birth' as `column_name`, date_of_birth AS value FROM workers_info WHERE             date_of_birth IS NOT NULL
        UNION
        SELECT id, 'salary' as `column_name`, salary AS value FROM workers_info WHERE salary IS NOT NULL
        
    ) pivot
    ORDER BY id ASC, FIELD(column_name, "name", "date_of_birth", "salary")
    ;
END