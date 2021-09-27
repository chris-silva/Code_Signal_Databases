CREATE PROCEDURE validPhoneNumbers()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    SELECT name, surname, phone_number FROM phone_numbers
    WHERE phone_number REGEXP '^1-[0-9]{3}-[0-9]{3}-[0-9]{4}$|^\\(1\\)[0-9]{3}-[0-9]{3}-[0-9]{4}$'
    ORDER BY surname;
    
    /*
    [0-9]{1,2} means you could have 1 or 2 digits with each digit being from 0 to 9
    ^ means the front of the regular expression must match
    $ means the back of the regular expression must match
    (1|2) means 1 or 2
    \\. use the escape character to match the dot (.)
    */
    
END