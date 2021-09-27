CREATE PROCEDURE mischievousNephews()
   
    
BEGIN
   SELECT
   CASE
     WHEN DAYNAME(mischief_date) = 'Monday' THEN 0
     WHEN DAYNAME(mischief_date) = 'Tuesday' THEN 1
     WHEN DAYNAME(mischief_date) = 'Wednesday' THEN 2
     WHEN DAYNAME(mischief_date) = 'Thursday' THEN 3
     WHEN DAYNAME(mischief_date) = 'Friday' THEN 4
     WHEN DAYNAME(mischief_date) = 'Saturday' THEN 5
     WHEN DAYNAME(mischief_date) = 'Sunday' THEN 6
   END AS weekday,
   mischief_date, author, title
   FROM mischief
   ORDER BY weekday, FIELD(author, 'Huey', 'Dewey', 'Louie'), mischief_date, title ASC
    ;
END