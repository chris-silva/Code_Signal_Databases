/*Please add ; after each select statement*/
CREATE PROCEDURE mostExpensive()
BEGIN
	SELECT name from Products ORDER BY price * quantity DESC, name ASC LIMIT 1;
   
END