CREATE PROCEDURE salaryDifference()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    SELECT IFNULL(MAX(salary), 0) *
    IFNULL(
    (
        SELECT count(salary) 
        FROM employees
        GROUP BY salary
        ORDER BY salary DESC
        LIMIT 1
    ) 
    ,0
    )
    -
    IFNULL(MIN(salary), 0)  *
    IFNULL(
    (
        SELECT count(salary) 
        FROM employees
        GROUP BY salary
        ORDER BY salary ASC
        LIMIT 1
    ) 
    ,0
    )
    AS salary_diff
    FROM employees;
END