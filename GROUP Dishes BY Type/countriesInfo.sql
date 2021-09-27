CREATE PROCEDURE countriesInfo()
BEGIN
	SELECT COUNT(continent) AS number,
    SUM(population) / COUNT(continent) AS average,
    SUM(population) AS total
    From countries;
END