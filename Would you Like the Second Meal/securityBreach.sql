CREATE PROCEDURE securityBreach()
BEGIN
	SELECT first_name, second_name, attribute
    FROM users
    WHERE BINARY attribute LIKE CONCAT('_%', '\%', first_name, '_', second_name, '\%', '%')
    ORDER BY attribute ASC;
END