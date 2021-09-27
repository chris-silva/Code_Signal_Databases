CREATE PROCEDURE userCountries()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT u.id, COALESCE(c.country, 'unknown') AS country
    FROM users u
    LEFT JOIN cities c ON u.city = c.city
    ORDER BY u.id;
END