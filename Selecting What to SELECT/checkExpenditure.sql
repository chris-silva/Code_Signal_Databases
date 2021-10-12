CREATE PROCEDURE checkExpenditure()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    
    /*
                                WEEK
    SELECT WEEK('2016-02-08');  6
    SELECT WEEK('2016-02-15');  7
    SELECT WEEK('2016-06-13');  24
    SELECT WEEK('2016-06-27');  26
    
    SELECT WEEK('2014-01-06');  1
    SELECT WEEK('2014-01-20');  3
    SELECT WEEK('2014-02-10');  6
    SELECT WEEK('2014-02-24');  8
    */
    
    SELECT  a.id,
    IF(
    SUM( 
    
        ( (( WEEK(e.monday_date, 1) > a.left_bound OR WEEK(e.monday_date, 1) = a.left_bound )
        AND 
        ( WEEK(e.monday_date, 1) < a.right_bound OR WEEK(e.monday_date, 1) = a.right_bound ))
   
    *
    ( e.expenditure_sum) ) 
   
     
    ) 
    >  a.value,
     #######################################
     
    SUM( 
    
        ( (( WEEK(e.monday_date, 1) > a.left_bound OR WEEK(e.monday_date, 1) = a.left_bound )
        AND 
        ( WEEK(e.monday_date, 1) < a.right_bound OR WEEK(e.monday_date, 1) = a.right_bound ))
   
    *
    (e.expenditure_sum) ) 
    )
    
    ########################################
     -  a.value,
     0 
     ) AS  loss
    
    FROM  allowable_expenditure a, expenditure_plan e
    GROUP BY a.id
    ORDER BY a.id;
    
    
END
