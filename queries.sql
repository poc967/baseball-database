SET SQL_SAFE_UPDATES
= 0;

UPDATE teams 
    SET teamAbbreviation = 'WAS' 
    WHERE id = (SELECT id
WHERE teamAbbreviation = 'WSH');

SELECT startTime, homeScore, awayScore
FROM games
WHERE startTime <= '2019-06-06 17:00:00';

SELECT *
FROM teams
WHERE league = 'NL';

SELECT CONCAT(players.firstName,' ', players.lastName) AS FullName, players.position, players.hits, players.throws, teams.teamAbbreviation AS Team
	FROM players JOIN teams 
    ON players.teamId = teams.id
    WHERE teamAbbreviation = 'BOS';
    
SELECT CONCAT(players.firstName,' ', players.lastName) AS FullName, players.position, teams.teamAbbreviation, hitterStats.homeRuns
	FROM players 
    JOIN teams ON players.teamId = teams.id
    JOIN hitterStats ON hitterStats.playerId = players.id
    JOIN games ON hitterStats.gameId = games.id
    WHERE games.startTime >= '2019-06-06 00:00:00'
    ORDER BY homeRuns DESC LIMIT 5;
    
SELECT CONCAT(players.firstName,' ', players.lastName) AS FullName, teams.teamAbbreviation, earnedRuns, inningsPitched
	FROM players 
    JOIN teams ON players.teamId = teams.id
    JOIN pitcherStats ON pitcherStats.playerId = players.id
    JOIN games ON pitcherStats.gameId = games.id
    WHERE games.startTime >= '2019-06-06 00:00:00' AND pitcherStats.inningsPitched >= 4
    ORDER BY earnedRuns DESC LIMIT 5;
    
    SELECT CONCAT(players.firstName,' ', players.lastName) AS FullName, players.position, teams.teamAbbreviation, doubles, startTime, homeTeamId, awayTeamId
	FROM players 
    JOIN teams ON players.teamId = teams.id
    JOIN hitterStats ON hitterStats.playerId = players.id
    JOIN games ON hitterStats.gameId = games.id
    WHERE games.startTime >= '2019-06-06 00:00:00'
    ORDER BY doubles DESC LIMIT 1;
    
    
    




    
    



