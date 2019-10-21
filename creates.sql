CREATE DATABASE baseball;

USE baseball;

CREATE TABLE teams
(
	id INT
	AUTO_INCREMENT,
    teamLocation VARCHAR
	(255),
    teamMascot VARCHAR
	(255),
    teamAbbreviation VARCHAR
	(3),
    league ENUM
	('AL', 'NL'),
    division ENUM
	('West', 'East', 'Central') NOT NULL,
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW(),
    deletedAt DATETIME,
    PRIMARY KEY
	(id)
);

	CREATE TABLE games
	(
		id INT
		AUTO_INCREMENT,
	startTime TIMESTAMP NOT NULL,
	homeTeamId INT NOT NULL,
	awayTeamId INT NOT NULL,
	homeScore INT,
	awayScore INT,
	createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW(),
	deletedAt DATETIME,
	PRIMARY KEY
		(id),
	FOREIGN KEY
		(homeTeamId) REFERENCES teams
		(id),
	FOREIGN KEY
		(awayTeamId) REFERENCES teams
		(id)
);

		CREATE TABLE players
		(
			id INT
			AUTO_INCREMENT,
    firstName VARCHAR
			(255),
    lastName VARCHAR
			(255),
    position ENUM
			('SP', 'RP', 'C', '1B', '2B', '3B', 'SS', 'CF', 'LF', 'RF', 'DH'),
    throws ENUM
			('L', 'R', 'B'),
    hits ENUM
			('L', 'R', 'B'),
    teamId INT NOT NULL,
    createdAt DATETIME DEFAULT NOW(),
	updatedAt DATETIME DEFAULT NOW(),
	deletedAt DATETIME,
    PRIMARY KEY
			(id),
    FOREIGN KEY
			(teamId) REFERENCES teams
			(id)
);

			CREATE TABLE hitterStats
			(
				atBats INT DEFAULT 0,
				runs INT DEFAULT 0,
				hits INT DEFAULT 0,
				doubles INT DEFAULT 0,
				triples INT DEFAULT 0,
				homeRuns INT DEFAULT 0,
				runsBattedIn INT DEFAULT 0,
				walks INT DEFAULT 0,
				strikeOuts INT DEFAULT 0,
				steals INT DEFAULT 0,
				playerId INT NOT NULL,
				gameId INT NOT NULL,
				createdAt DATETIME DEFAULT NOW(),
				updatedAt DATETIME DEFAULT NOW(),
				deletedAt DATETIME,
				PRIMARY KEY(playerId, gameId),
				FOREIGN KEY(playerId) REFERENCES players(id),
				FOREIGN KEY(gameId) REFERENCES games(id)
			);

			CREATE TABLE pitcherStats
			(
				win VARCHAR(1),
				inningsPitched DECIMAL(3,1),
				hits INT DEFAULT 0,
				runs INT DEFAULT 0,
				earnedRuns INT DEFAULT 0,
				walks INT DEFAULT 0,
				strikeOuts INT DEFAULT 0,
                playerId INT NOT NULL,
				gameId INT NOT NULL,
				createdAt DATETIME DEFAULT NOW(),
				updatedAt DATETIME DEFAULT NOW(),
				deletedAt DATETIME,
				PRIMARY KEY(playerId, gameId),
				FOREIGN KEY (playerId) REFERENCES players(id),
				FOREIGN KEY (gameId) REFERENCES games(id)
			); 