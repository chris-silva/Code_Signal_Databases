CREATE PROCEDURE recentHires()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    SELECT * FROM ( (SELECT name FROM pr_department ORDER BY date_joined DESC LIMIT 5) 
    ORDER BY name  ) AS a
    UNION ALL
    SELECT * FROM ( (SELECT name FROM it_department ORDER BY date_joined DESC LIMIT 5) 
    ORDER BY name ) AS b
    UNION ALL
    SELECT * FROM ( (SELECT name FROM sales_department ORDER BY date_joined DESC  LIMIT 5)
    ORDER BY name ) AS c
    ;
    
END