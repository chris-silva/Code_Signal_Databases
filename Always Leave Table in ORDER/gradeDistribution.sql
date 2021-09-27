CREATE PROCEDURE gradeDistribution()
BEGIN
	
    SELECT Name, ID FROM Grades WHERE 
      Midterm1 / 100 * 0.25 + Midterm2 / 100 * 0.25 + 
      Final / 200 * 0.50
      < Final / 100
      AND
      Midterm1 / 100 * 0.50 + Midterm2 / 100 * 0.50
      < Final / 100
     ORDER BY LEFT( Name, 3) ASC, ID ASC
    ;
    
END