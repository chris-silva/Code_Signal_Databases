CREATE PROCEDURE netIncome()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT DATE_FORMAT(date, "%Y") AS year,
    (
    CASE 
    WHEN DATE_FORMAT(date, "%m") >= 1 AND DATE_FORMAT(date, "%m") <= 3 THEN 1
    WHEN DATE_FORMAT(date, "%m") >= 4 AND DATE_FORMAT(date, "%m") <= 6 THEN 2
    WHEN DATE_FORMAT(date, "%m") >= 7 AND DATE_FORMAT(date, "%m") <= 9 THEN 3
    ELSE 4
    END
    )
    AS quarter,
    SUM( CAST(profit AS SIGNED) - CAST(loss AS SIGNED) ) AS net_profit
    FROM accounting
    GROUP BY quarter, year;
END