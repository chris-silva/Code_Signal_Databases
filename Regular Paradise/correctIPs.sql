CREATE PROCEDURE correctIPs()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT id, ip FROM ips WHERE ip  REGEXP  '(^([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])\\.([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])\\.([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])\\.[0-9][0-9]$|^([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])\\.([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])\\.[0-9][0-9]\\.([0-9]{1,2}|[1][0-9][0-9]|[2][0-5][0-5])$)'
    
    /*
    [0-9]{1,2} means you could have 1 or 2 digits with each digit being from 0 to 9
    ^ means the front of the regular expression must match
    $ means the back of the regular expression must match
    (1|2) means 1 or 2
    \\. use the escape character to match the dot (.)
    */
    
    ORDER BY id;
END