CREATE PROCEDURE marketReport()
BEGIN
	SELECT COALESCE(country, "Total:") AS country, COUNT(competitor) AS competitors
    FROM foreignCompetitors
    
    #GROUP BY country WITH ROLLUP
    #ORDER BY country ASC
    
    GROUP BY country WITH ROLLUP 
    ;
    
    
END