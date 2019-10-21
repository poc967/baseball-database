SET SQL_SAFE_UPDATES = 0;

UPDATE teams 
    SET teamAbbreviation = 'WAS' 
    WHERE id = (SELECT id WHERE teamAbbreviation = 'WSH');
    
SELECT startTime, homeScore, awayScore FROM games WHERE startTime <= '2019-06-06 17:00:00';

SELECT * FROM teams WHERE league = 'NL';