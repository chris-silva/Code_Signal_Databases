CREATE PROCEDURE soccerGameSeries()
BEGIN
	/* Write your SQL here. Terminate each statement with a semicolon. */
    SELECT 
    
    CASE
    
    WHEN
    SUM( first_team_score >  second_team_score  ) > SUM( first_team_score <  second_team_score  )
    THEN 1
    
    WHEN
    SUM( first_team_score <  second_team_score  ) > SUM( first_team_score >  second_team_score  )
    THEN 2
    
    /*goal difference*/
    
    WHEN 
    SUM( first_team_score -  second_team_score  ) > SUM( second_team_score -  first_team_score  )
    THEN 1
    
    WHEN 
    SUM( second_team_score -  first_team_score  ) > SUM( first_team_score -  second_team_score  )
    THEN 2
    
    /*away goals*/
    WHEN
    SUM( (match_host = 2) * first_team_score) > SUM( (match_host = 1) * second_team_score)
    THEN 1
    
    WHEN
    SUM( (match_host = 1) * second_team_score) > SUM( (match_host = 2) * first_team_score)
    THEN 2
    
    ELSE 0
      
    END
    AS winner
    FROM scores;
END;