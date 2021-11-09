CREATE PROCEDURE hostnamesOrdering()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT id, hostname FROM
    (
        SELECT id,
        CASE
            WHEN ROUND((LENGTH(hostname) - LENGTH( REPLACE (hostname, ".", "") ) ) / LENGTH(".") ) = 0
                THEN SUBSTRING_INDEX(hostname, ".", 1)
            WHEN ROUND((LENGTH(hostname) - LENGTH( REPLACE (hostname, ".", "") ) ) / LENGTH(".") ) = 1
                THEN CONCAT(
                    SUBSTRING_INDEX(SUBSTRING_INDEX(hostname, '.', 2), '.', -1),
                    ".",
                    SUBSTRING_INDEX(hostname, ".", 1)
                )
                
            WHEN ROUND((LENGTH(hostname) - LENGTH( REPLACE (hostname, ".", "") ) ) / LENGTH(".") ) = 2
                THEN CONCAT(
                    SUBSTRING_INDEX(hostname, '.', -1),
                    ".",
                    SUBSTRING_INDEX(SUBSTRING_INDEX(hostname, '.', 2), '.', -1),
                    ".",
                    SUBSTRING_INDEX(hostname, ".", 1)
                )
            ELSE ""
        END AS myID,
        hostname
        FROM hostnames
        
        ORDER BY myID ASC
    ) x
    
    
    ;
END