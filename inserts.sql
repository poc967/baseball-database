INSERT INTO teams
    (teamLocation, teamMascot, teamAbbreviation, league, division)
VALUES
    ( 'Pittsburgh', 'Pirates', 'PIT', 'NL', 'Central' ),
    ( 'Texas', 'Rangers', 'TEX', 'AL', 'West' ),
    ( 'Kansas City', 'Royals', 'KC', 'AL', 'Central' ),
    ( 'Colorado', 'Rockies', 'COL', 'NL', 'West' ),
    ( 'St. Louis', 'Cardinals', 'STL', 'NL', 'Central' ),
    ( 'Minnesota', 'Twins', 'MIN', 'AL', 'Central' ),
    ( 'Chicago', 'Cubs', 'CHC', 'NL', 'Central' ),
    ( 'Tampa Bay', 'Rays', 'TB', 'AL', 'East' ),
    ( 'Seattle', 'Mariners', 'SEA', 'AL', 'West' ),
    ( 'Boston', 'Red Sox', 'BOS', 'AL', 'East' ),
    ( 'Oakland', 'Athletics', 'OAK', 'AL', 'West' ),
    ( 'Milwaukee', 'Brewers', 'MIL', 'NL', 'Central' ),
    ( 'Miami', 'Marlins', 'MIA', 'NL', 'East' ),
    ( 'Cleveland', 'Indians', 'CLE', 'AL', 'Central' ),
    ( 'San Francisco', 'Giants', 'SF', 'NL', 'West' ),
    ( 'Toronto', 'Blue Jays', 'TOR', 'AL', 'East' ),
    ( 'Los Angeles', 'Angels', 'LAA', 'AL', 'West' ),
    ( 'Atlanta', 'Braves', 'ATL', 'NL', 'East' ),
    ( 'Washington', 'Nationals', 'WSH', 'NL', 'East' ),
    ( 'Houston', 'Astros', 'HOU', 'AL', 'West' ),
    ( 'New York', 'Mets', 'NYM', 'NL', 'East' ),
    ( 'Cincinnati', 'Reds', 'CIN', 'NL', 'Central' ),
    ( 'Detroit', 'Tigers', 'DET', 'AL', 'Central' ),
    ( 'Baltimore', 'Orioles', 'BAL', 'AL', 'East' ),
    ( 'New York', 'Yankees', 'NYY', 'AL', 'East' ),
    ( 'San Diego', 'Padres', 'SD', 'NL', 'West' );

INSERT INTO games
    (startTime, homeTeamId, awayTeamId, homeScore, awayScore)
VALUES
    ( '2019-06-06 12:35:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'PIT'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'ATL'), 6, 1 ),
    ( '2019-06-06 20:05:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'TEX'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'BAL'), 4, 3 ),
    ( '2019-06-06 13:15:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'KC'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'BOS'), 5, 7 ),
    ( '2019-06-06 14:20:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'CHC'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'COL'), 1, 3 ),
    ( '2019-06-06 13:15:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'STL'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'CIN'), 3, 1 ),
    ( '2019-06-06 19:00:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'CLE'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'MIN'), 4, 5 ),
    ( '2019-06-06 13:10:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'DET'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'TB'), 1, 6 ),
    ( '2019-06-06 15:40:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'SEA'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'HOU'), 7, 8 ),
    ( '2019-06-06 22:07:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'LAA'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'OAK'), 4, 7 ),
    ( '2019-06-06 14:10:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'MIL'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'MIA'), 5, 1 ),
    ( '2019-06-06 12:10:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'NYM'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'SF'), 7, 3 ),
    ( '2019-06-06 19:00:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'TOR'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'NYY'), 2, 6 ),
    ( '2019-06-06 22:10:00', (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'SD'), (SELECT id
        FROM teams
        WHERE teamAbbreviation = 'WSH'), 5, 4 );

INSERT INTO players
    (firstName, lastName, position, throws, hits, teamId)
VALUES
    ( "Chris", "Archer", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Josh", "Bell", "1B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Francisco", "Liriano", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Starling", "Marte", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Colin", "Moran", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Kevin", "Newman", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Gregory", "Polanco", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Bryan", "Reynolds", "LF", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Jacob", "Stallings", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Cole", "Tucker", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Felipe", "Vazquez", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "PIT" )),
    ( "Elvis", "Andrus", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Asdrubal", "Cabrera", "3B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Jesse", "Chavez", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Delino", "DeShields", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Ronald", "Guzman", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Ariel", "Jurado", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Shawn", "Kelley", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Isiah", "Kiner-Falefa", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Chris", "Martin", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Nomar", "Mazara", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Rougned", "Odor", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Hunter", "Pence", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Danny", "Santana", "CF", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TEX" )),
    ( "Scott", "Barlow", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Cheslor", "Cuthbert", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Danny", "Duffy", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Brian", "Flynn", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Cam", "Gallagher", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Alex", "Gordon", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Billy", "Hamilton", "CF", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Nicky", "Lopez", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Kevin", "McCarthy", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Whit", "Merrifield", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Adalberto", "Mondesi", "2B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Ryan", "O'Hearn", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Jorge", "Soler", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "KC" )),
    ( "Nolan", "Arenado", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "David", "Dahl", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Ian", "Desmond", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Jairo", "Diaz", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Chris", "Iannetta", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Peter", "Lambert", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Scott", "Oberg", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Mark", "Reynolds", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Brendan", "Rodgers", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Trevor", "Story", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Raimel", "Tapia", "CF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "COL" )),
    ( "Harrison", "Bader", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Matt", "Carpenter", "1B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Paul", "DeJong", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Dexter", "Fowler", "RF", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "John", "Gant", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Paul", "Goldschmidt", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Jordan", "Hicks", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Dakota", "Hudson", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Andrew", "Miller", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Marcell", "Ozuna", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Matt", "Wieters", "C", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Kolten", "Wong", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "STL" )),
    ( "Ehire", "Adrianza", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Willians", "Astudillo", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Jose", "Berrios", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "C.J.", "Cron", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Mitch", "Garver", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Marwin", "Gonzalez", "3B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Max", "Kepler", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Matt", "Magill", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Trevor", "May", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Jorge", "Polanco", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Taylor", "Rogers", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Eddie", "Rosario", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Jonathan", "Schoop", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIN" )),
    ( "Albert", "Almora Jr.", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Javier", "Baez", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "David", "Bote", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Kris", "Bryant", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Willson", "Contreras", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Daniel", "Descalso", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Carl", "Edwards Jr.", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Jose", "Quintana", "SP", "L", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Anthony", "Rizzo", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Kyle", "Ryan", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Kyle", "Schwarber", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CHC" )),
    ( "Willy", "Adames", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Christian", "Arroyo", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Jalen", "Beeks", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Diego", "Castillo", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Travis", "d'Arnaud", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Yandy", "Diaz", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Avisail", "Garcia", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Kevin", "Kiermaier", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Austin", "Meadows", "CF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Tommy", "Pham", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Daniel", "Robertson", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Chaz", "Roe", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Ryne", "Stanek", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Hunter", "Wood", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TB" )),
    ( "Austin", "Adams", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Anthony", "Bass", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Gerson", "Bautista", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Brandon", "Brennan", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Roenis", "Elias", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Edwin", "Encarnacion", "DH", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Matt", "Festa", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Cory", "Gearrin", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Mitch", "Haniger", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Shed", "Long", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Tommy", "Milone", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Dylan", "Moore", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Omar", "Narvaez", "C", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Domingo", "Santana", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Kyle", "Seager", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Mallex", "Smith", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Daniel", "Vogelbach", "1B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SEA" )),
    ( "Matt", "Barnes", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Andrew", "Benintendi", "LF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Mookie", "Betts", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Xander", "Bogaerts", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Jackie", "Bradley Jr.", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Ryan", "Brasier", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Colten", "Brewer", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Michael", "Chavis", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Rafael", "Devers", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Heath", "Hembree", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "J.D.", "Martinez", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Eduardo", "Nunez", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Josh", "Taylor", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Christian", "Vazquez", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Marcus", "Walden", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Ryan", "Weber", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BOS" )),
    ( "Ryan", "Buchter", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Mark", "Canha", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Matt", "Chapman", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Khris", "Davis", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Mike", "Fiers", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Liam", "Hendriks", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Ramon", "Laureano", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Josh", "Phegley", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Chad", "Pinder", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Stephen", "Piscotty", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Jurickson", "Profar", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Marcus", "Semien", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Joakim", "Soria", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Lou", "Trivino", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "OAK" )),
    ( "Jesus", "Aguilar", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Orlando", "Arcia", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Ryan", "Braun", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Lorenzo", "Cain", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Josh", "Hader", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Jeremy", "Jeffress", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Mike", "Moustakas", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Freddy", "Peralta", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Hernan", "Perez", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Manny", "Pina", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Christian", "Yelich", "RF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIL" )),
    ( "Jorge", "Alfaro", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Brian", "Anderson", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Austin", "Brice", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Starlin", "Castro", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Garrett", "Cooper", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Austin", "Dean", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Tayron", "Guerrero", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Harold", "Ramirez", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "JT", "Riddle", "SS", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Miguel", "Rojas", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Sergio", "Romo", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Caleb", "Smith", "SP", "L", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "MIA" )),
    ( "Trevor", "Bauer", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Jake", "Bauers", "LF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Jon", "Edwards", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Jason", "Kipnis", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Francisco", "Lindor", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Jordan", "Luplow", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Leonys", "Martin", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Tyler", "Naquin", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Roberto", "Perez", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Jose", "Ramirez", "2B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Carlos", "Santana", "1B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Josh", "Smith", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CLE" )),
    ( "Shaun", "Anderson", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Brandon", "Belt", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Brandon", "Crawford", "SS", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Steven", "Duggar", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Mark", "Melancon", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Reyes", "Moronta", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Joe", "Panik", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Kevin", "Pillar", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Pablo", "Sandoval", "3B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Stephen", "Vogt", "C", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Tony", "Watson", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Mike", "Yastrzemski", "LF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SF" )),
    ( "Brandon", "Drury", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Freddy", "Galvis", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Randal", "Grichuk", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Vladimir", "Guerrero Jr.", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Lourdes", "Gurriel Jr.", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Teoscar", "Hernandez", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Edwin", "Jackson", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Elvis", "Luciano", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Luke", "Maile", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Tim", "Mayza", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Thomas", "Pannone", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Justin", "Smoak", "1B", "L", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Eric", "Sogard", "2B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "TOR" )),
    ( "Jaime", "Barria", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Kole", "Calhoun", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "David", "Fletcher", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Dustin", "Garneau", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Brian", "Goodwin", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Tommy", "La Stella", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Shohei", "Ohtani", "DH", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Luis", "Rengifo", "2B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Tyler", "Skaggs", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Mike", "Trout", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Jared", "Walsh", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "LAA" )),
    ( "Ronald", "Acuna Jr.", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Ozzie", "Albies", "2B", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Josh", "Donaldson", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Mike", "Foltynewicz", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Freddie", "Freeman", "1B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Nick", "Markakis", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Brian", "McCann", "C", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Sean", "Newcomb", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Austin", "Riley", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Dansby", "Swanson", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Jacob", "Webb", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "ATL" )),
    ( "Patrick", "Corbin", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Brian", "Dozier", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Yan", "Gomes", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Matt", "Grace", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Javy", "Guerra", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Howie", "Kendrick", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Anthony", "Rendon", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Victor", "Robles", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Tony", "Sipp", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Juan", "Soto", "LF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Michael", "Taylor", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Trea", "Turner", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "WSH" )),
    ( "Michael", "Brantley", "LF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Alex", "Bregman", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Robinson", "Chirinos", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Chris", "Devenski", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Derek", "Fisher", "CF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Yuli", "Gurriel", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Will", "Harris", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Josh", "James", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Tony", "Kemp", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Jake", "Marisnick", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Jack", "Mayfield", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Roberto", "Osuna", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Ryan", "Pressly", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Hector", "Rondon", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Justin", "Verlander", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Tyler", "White", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "HOU" )),
    ( "Pete", "Alonso", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Michael", "Conforto", "RF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Jeurys", "Familia", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Todd", "Frazier", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Adeiny", "Hechavarria", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Juan", "Lagares", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Seth", "Lugo", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Tomas", "Nido", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Amed", "Rosario", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Dominic", "Smith", "1B", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Zack", "Wheeler", "SP", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYM" )),
    ( "Tucker", "Barnhart", "C", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Anthony", "DeSclafani", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Derek", "Dietrich", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Amir", "Garrett", "RP", "L", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Jose", "Iglesias", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Michael", "Lorenzen", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Wandy", "Peralta", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Yasiel", "Puig", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Nick", "Senzel", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Eugenio", "Suarez", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Joey", "Votto", "1B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Jesse", "Winker", "RF", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "CIN" )),
    ( "Austin", "Adams", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Victor", "Alcantara", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Gordon", "Beckham", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Nicholas", "Castellanos", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Brandon", "Dixon", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Buck", "Farmer", "RP", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Niko", "Goodrum", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Grayson", "Greiner", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "JaCoby", "Jones", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Dawel", "Lugo", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Daniel", "Norris", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Ronny", "Rodriguez", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Christin", "Stewart", "LF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Daniel", "Stumpf", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "DET" )),
    ( "Hanser", "Alberto", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Miguel", "Castro", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Chris", "Davis", "1B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "David", "Hess", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Trey", "Mancini", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Richie", "Martin", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Renato", "Nunez", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Rio", "Ruiz", "3B", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Chance", "Sisco", "C", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Dwight", "Smith Jr.", "RF", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Stevie", "Wilkerson", "SS", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "BAL" )),
    ( "Aroldis", "Chapman", "RP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Thairo", "Estrada", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Clint", "Frazier", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Chad", "Green", "RP", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "J.A.", "Happ", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Aaron", "Hicks", "CF", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "DJ", "LeMahieu", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Cameron", "Maybin", "LF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Kendrys", "Morales", "DH", "R", "B", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Gary", "Sanchez", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Gio", "Urshela", "3B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Luke", "Voit", "1B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "NYY" )),
    ( "Austin", "Hedges", "C", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Ian", "Kinsler", "2B", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Joey", "Lucchesi", "SP", "L", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Manny", "Machado", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Manuel", "Margot", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Wil", "Myers", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Hunter", "Renfroe", "RF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Franmil", "Reyes", "CF", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Craig", "Stammen", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Fernando", "Tatis Jr.", "SS", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Trey", "Wingenter", "RP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Matt", "Wisler", "SP", "R", "R", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" )),
    ( "Kirby", "Yates", "RP", "R", "L", (SELECT id
        FROM teams
        WHERE teamAbbreviation = "SD" ));

INSERT INTO hitterStats
    (atBats, runs, hits, doubles, triples, homeRuns, runsBattedIn, walks, strikeOuts, steals, playerId, gameId)
VALUES
    ( "4", "2", "3", "3", "0", "0", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Bell" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "2", "1", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ronald" AND lastName = "Guzman" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "5", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "O'Hearn" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "1", "2", "2", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Ian" AND lastName = "Desmond" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "0", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Mark" AND lastName = "Reynolds" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "0", "1", "0", "0", "0", "1", "0", "3", "1", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Carpenter" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Paul" AND lastName = "Goldschmidt" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "C.J." AND lastName = "Cron" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Anthony" AND lastName = "Rizzo" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "5", "1", "2", "0", "0", "0", "1", "2", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Daniel" AND lastName = "Vogelbach" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "1", "1", "1", "0", "0", "0", "0", "3", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Mark" AND lastName = "Canha" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jesus" AND lastName = "Aguilar" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "1", "1", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Carlos" AND lastName = "Santana" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "1", "1", "0", "0", "1", "2", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Brandon" AND lastName = "Belt" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "1", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Justin" AND lastName = "Smoak" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "1", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jared" AND lastName = "Walsh" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "1", "1", "0", "0", "1", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Freddie" AND lastName = "Freeman" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "6", "1", "1", "0", "0", "0", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Yuli" AND lastName = "Gurriel" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Pete" AND lastName = "Alonso" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "1", "2", "0", "0", "1", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Dominic" AND lastName = "Smith" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Joey" AND lastName = "Votto" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "1", "1", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Chris" AND lastName = "Davis" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "2", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Luke" AND lastName = "Voit" AND position = "1B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Rougned" AND lastName = "Odor" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "1", "2", "1", "0", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Nicky" AND lastName = "Lopez" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "5", "0", "1", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Whit" AND lastName = "Merrifield" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "5", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Adalberto" AND lastName = "Mondesi" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "2", "1", (SELECT id
        FROM players
        WHERE firstName = "Kolten" AND lastName = "Wong" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jonathan" AND lastName = "Schoop" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "2", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Daniel" AND lastName = "Robertson" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "7", "1", "0", "0", "0", "0", "1", "0", "4", "0", (SELECT id
        FROM players
        WHERE firstName = "Shed" AND lastName = "Long" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "0", "3", "0", "0", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Eduardo" AND lastName = "Nunez" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "2", "2", "0", "0", "2", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Mike" AND lastName = "Moustakas" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Starlin" AND lastName = "Castro" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jason" AND lastName = "Kipnis" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "1", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jose" AND lastName = "Ramirez" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Joe" AND lastName = "Panik" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Lourdes" AND lastName = "Gurriel Jr." AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "1", "2", "1", "0", "1", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Eric" AND lastName = "Sogard" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Luis" AND lastName = "Rengifo" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "0", "1", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Ozzie" AND lastName = "Albies" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "4", "1", "2", "1", "0", "1", "2", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Brian" AND lastName = "Dozier" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "4", "1", "1", "0", "0", "0", "2", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Howie" AND lastName = "Kendrick" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "4", "1", "1", "0", "0", "1", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jack" AND lastName = "Mayfield" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "6", "0", "3", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Tyler" AND lastName = "White" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Dawel" AND lastName = "Lugo" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "1", "3", "2", "0", "0", "2", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "DJ" AND lastName = "LeMahieu" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "2", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ian" AND lastName = "Kinsler" AND position = "2B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "3", "1", "1", "0", "0", "1", "2", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Colin" AND lastName = "Moran" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "2", "1", "1", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Asdrubal" AND lastName = "Cabrera" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "5", "1", "2", "0", "0", "1", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Cheslor" AND lastName = "Cuthbert" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Nolan" AND lastName = "Arenado" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Marwin" AND lastName = "Gonzalez" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "David" AND lastName = "Bote" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "3", "1", "1", "1", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Kris" AND lastName = "Bryant" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Daniel" AND lastName = "Descalso" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "3", "1", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Christian" AND lastName = "Arroyo" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "5", "1", "3", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Yandy" AND lastName = "Diaz" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "5", "1", "2", "0", "0", "0", "1", "1", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Dylan" AND lastName = "Moore" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "7", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Kyle" AND lastName = "Seager" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Michael" AND lastName = "Chavis" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "3", "1", "1", "0", "0", "0", "2", "2", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Rafael" AND lastName = "Devers" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "1", "0", "0", "0", "0", "0", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Chapman" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Hernan" AND lastName = "Perez" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Brian" AND lastName = "Anderson" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "2", "1", "0", "0", "1", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Pablo" AND lastName = "Sandoval" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Brandon" AND lastName = "Drury" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Vladimir" AND lastName = "Guerrero Jr." AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "5", "1", "2", "0", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Tommy" AND lastName = "La Stella" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Donaldson" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "4", "0", "2", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Riley" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Anthony" AND lastName = "Rendon" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "6", "1", "3", "0", "0", "1", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Alex" AND lastName = "Bregman" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "1", "1", "0", "0", "1", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Todd" AND lastName = "Frazier" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "1", "1", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Nick" AND lastName = "Senzel" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Eugenio" AND lastName = "Suarez" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Gordon" AND lastName = "Beckham" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ronny" AND lastName = "Rodriguez" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Renato" AND lastName = "Nunez" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Rio" AND lastName = "Ruiz" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "1", "1", "0", "0", "1", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Gio" AND lastName = "Urshela" AND position = "3B" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jacob" AND lastName = "Stallings" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "1", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Isiah" AND lastName = "Kiner-Falefa" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "3", "0", "2", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Cam" AND lastName = "Gallagher" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "2", "0", "0", "0", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Chris" AND lastName = "Iannetta" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Wieters" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "1", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Willians" AND lastName = "Astudillo" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "5", "0", "1", "1", "0", "0", "1", "0", "4", "0", (SELECT id
        FROM players
        WHERE firstName = "Mitch" AND lastName = "Garver" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Willson" AND lastName = "Contreras" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "3", "2", "2", "0", "0", "2", "4", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Travis" AND lastName = "d'Arnaud" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "6", "1", "2", "0", "0", "1", "1", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Omar" AND lastName = "Narvaez" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "1", "1", "0", "1", "0", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Christian" AND lastName = "Vazquez" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "3", "0", "0", "0", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Phegley" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Manny" AND lastName = "Pina" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Jorge" AND lastName = "Alfaro" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "2", "1", "1", "0", "0", "1", "2", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Roberto" AND lastName = "Perez" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Stephen" AND lastName = "Vogt" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Luke" AND lastName = "Maile" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Dustin" AND lastName = "Garneau" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "0", "2", "1", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Brian" AND lastName = "McCann" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Yan" AND lastName = "Gomes" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "3", "3", "1", "0", "0", "1", "2", "4", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Robinson" AND lastName = "Chirinos" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Tomas" AND lastName = "Nido" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "0", "0", "0", "0", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Tucker" AND lastName = "Barnhart" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Grayson" AND lastName = "Greiner" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "2", "1", "1", "1", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Chance" AND lastName = "Sisco" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "5", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Gary" AND lastName = "Sanchez" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Hedges" AND position = "C" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Starling" AND lastName = "Marte" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "1", "0", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Danny" AND lastName = "Santana" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "0", "2", "1", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Billy" AND lastName = "Hamilton" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Raimel" AND lastName = "Tapia" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "2", "1", "1", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Harrison" AND lastName = "Bader" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Albert" AND lastName = "Almora Jr." AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "3", "1", "2", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Kevin" AND lastName = "Kiermaier" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "5", "0", "1", "0", "0", "0", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Meadows" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "5", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Tommy" AND lastName = "Pham" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "6", "0", "1", "0", "0", "0", "1", "1", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Mallex" AND lastName = "Smith" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "2", "1", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jackie" AND lastName = "Bradley Jr." AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "1", "1", "0", "0", "0", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ramon" AND lastName = "Laureano" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "2", "2", "0", "0", "0", "0", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Lorenzo" AND lastName = "Cain" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Leonys" AND lastName = "Martin" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "3", "0", "1", "0", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Tyler" AND lastName = "Naquin" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Steven" AND lastName = "Duggar" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Kevin" AND lastName = "Pillar" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "2", "0", "0", "0", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Brian" AND lastName = "Goodwin" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "1", "1", "0", "0", "1", "2", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Mike" AND lastName = "Trout" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "1", "1", "1", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Victor" AND lastName = "Robles" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Michael" AND lastName = "Taylor" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "6", "1", "2", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Derek" AND lastName = "Fisher" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "5", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jake" AND lastName = "Marisnick" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "3", "2", "2", "1", "0", "0", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Juan" AND lastName = "Lagares" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "5", "1", "2", "0", "0", "1", "3", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Aaron" AND lastName = "Hicks" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "2", "1", "2", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Manuel" AND lastName = "Margot" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "2", "1", "0", "0", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Franmil" AND lastName = "Reyes" AND position = "CF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "5", "2", "2", "1", "0", "0", "1", "2", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Edwin" AND lastName = "Encarnacion" AND position = "DH" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "1", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Shohei" AND lastName = "Ohtani" AND position = "DH" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Kendrys" AND lastName = "Morales" AND position = "DH" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "1", "2", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Bryan" AND lastName = "Reynolds" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "1", "1", "0", "0", "0", "0", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Delino" AND lastName = "DeShields" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "5", "2", "3", "0", "0", "1", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Alex" AND lastName = "Gordon" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "1", "1", "0", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "David" AND lastName = "Dahl" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "0", "2", "0", "0", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Marcell" AND lastName = "Ozuna" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Eddie" AND lastName = "Rosario" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "2", "1", (SELECT id
        FROM players
        WHERE firstName = "Kyle" AND lastName = "Schwarber" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "5", "1", "1", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Andrew" AND lastName = "Benintendi" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "2", "1", "1", "1", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "J.D." AND lastName = "Martinez" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "5", "1", "2", "0", "0", "0", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Khris" AND lastName = "Davis" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "1", "0", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "Braun" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "3", "0", "1", "0", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Garrett" AND lastName = "Cooper" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "1", "1", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Dean" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "4", "0", (SELECT id
        FROM players
        WHERE firstName = "Jake" AND lastName = "Bauers" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Mike" AND lastName = "Yastrzemski" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "0", "2", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Randal" AND lastName = "Grichuk" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Ronald" AND lastName = "Acuna Jr." AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "1", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Juan" AND lastName = "Soto" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "5", "0", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Michael" AND lastName = "Brantley" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "4", "0", "1", "1", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Tony" AND lastName = "Kemp" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Derek" AND lastName = "Dietrich" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "2", "0", "0", "0", "1", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Brandon" AND lastName = "Dixon" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "2", "0", "1", "0", "0", "0", "0", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "JaCoby" AND lastName = "Jones" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "0", "2", "1", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Christin" AND lastName = "Stewart" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "1", "3", "0", "0", "1", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Trey" AND lastName = "Mancini" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Clint" AND lastName = "Frazier" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "2", "2", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Cameron" AND lastName = "Maybin" AND position = "LF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "1", "1", "0", "0", "1", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Gregory" AND lastName = "Polanco" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Nomar" AND lastName = "Mazara" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "1", "1", "0", "0", "1", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Hunter" AND lastName = "Pence" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "5", "1", "2", "1", "0", "1", "2", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jorge" AND lastName = "Soler" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "3", "0", "1", "0", "0", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Dexter" AND lastName = "Fowler" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "3", "4", "0", "0", "3", "4", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Max" AND lastName = "Kepler" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "5", "0", "2", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Avisail" AND lastName = "Garcia" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Mitch" AND lastName = "Haniger" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "6", "1", "2", "0", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Domingo" AND lastName = "Santana" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "3", "1", "1", "0", "0", "1", "2", "2", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Mookie" AND lastName = "Betts" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "5", "2", "2", "0", "0", "1", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Stephen" AND lastName = "Piscotty" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "1", "3", "0", "0", "1", "2", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Christian" AND lastName = "Yelich" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Harold" AND lastName = "Ramirez" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "3", "1", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jordan" AND lastName = "Luplow" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Teoscar" AND lastName = "Hernandez" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "2", "0", "0", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Kole" AND lastName = "Calhoun" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Nick" AND lastName = "Markakis" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "1", "1", "0", "0", "0", "0", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Michael" AND lastName = "Conforto" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "0", "1", "1", "0", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Yasiel" AND lastName = "Puig" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "3", "1", "1", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jesse" AND lastName = "Winker" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "1", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Nicholas" AND lastName = "Castellanos" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Dwight" AND lastName = "Smith Jr." AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "2", "1", "0", "0", "0", "0", "0", "2", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Wil" AND lastName = "Myers" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "3", "1", "1", "0", "0", "1", "2", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Hunter" AND lastName = "Renfroe" AND position = "RF" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Kevin" AND lastName = "Newman" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Cole" AND lastName = "Tucker" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Elvis" AND lastName = "Andrus" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Brendan" AND lastName = "Rodgers" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "1", "1", "1", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Trevor" AND lastName = "Story" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "4", "1", "1", "0", "0", "1", "2", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Paul" AND lastName = "DeJong" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Ehire" AND lastName = "Adrianza" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "5", "1", "1", "0", "0", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Jorge" AND lastName = "Polanco" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "4", "0", "2", "0", "0", "0", "1", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Javier" AND lastName = "Baez" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "5", "1", "2", "0", "0", "1", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Willy" AND lastName = "Adames" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "1", "1", "0", "0", "0", "0", "1", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Xander" AND lastName = "Bogaerts" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "4", "1", "0", "0", "0", "0", "0", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Chad" AND lastName = "Pinder" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "3", "0", "1", "0", "0", "0", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jurickson" AND lastName = "Profar" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "5", "0", "1", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Marcus" AND lastName = "Semien" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Orlando" AND lastName = "Arcia" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "3", "0", "1", "1", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "JT" AND lastName = "Riddle" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "3", "0", (SELECT id
        FROM players
        WHERE firstName = "Miguel" AND lastName = "Rojas" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Francisco" AND lastName = "Lindor" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "2", "0", "0", "0", "0", "0", "0", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Brandon" AND lastName = "Crawford" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Freddy" AND lastName = "Galvis" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "1", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "David" AND lastName = "Fletcher" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Dansby" AND lastName = "Swanson" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Trea" AND lastName = "Turner" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "4", "1", "2", "0", "0", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Adeiny" AND lastName = "Hechavarria" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "1", "1", "0", "0", "1", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Amed" AND lastName = "Rosario" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Jose" AND lastName = "Iglesias" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "4", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Niko" AND lastName = "Goodrum" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "4", "1", "2", "0", "0", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Hanser" AND lastName = "Alberto" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "3", "0", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Richie" AND lastName = "Martin" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "0", "1", "0", "0", "0", "1", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Stevie" AND lastName = "Wilkerson" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "4", "1", "0", "0", "0", "0", "0", "0", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Thairo" AND lastName = "Estrada" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "4", "0", "0", "0", "0", "0", "1", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Manny" AND lastName = "Machado" AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "2", "1", "1", "0", "0", "0", "0", "2", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Fernando" AND lastName = "Tatis Jr." AND position = "SS" ), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )));

INSERT INTO pitcherStats
    ( win, inningsPitched, hits, runs, earnedRuns, walks, strikeOuts, playerId, gameId )
VALUES
    ( "Y", "1.1", "1", "0", "0", "2", "1", (SELECT id
        FROM players
        WHERE firstName = "Felipe" AND lastName = "Vazquez" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Jesse" AND lastName = "Chavez" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "Y", "6", "8", "3", "3", "1", "6", (SELECT id
        FROM players
        WHERE firstName = "Ariel" AND lastName = "Jurado" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "Y", "1", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Shawn" AND lastName = "Kelley" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "Y", "1", "0", "0", "0", "0", "3", (SELECT id
        FROM players
        WHERE firstName = "Chris" AND lastName = "Martin" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "N", "1.1", "1", "3", "3", "2", "3", (SELECT id
        FROM players
        WHERE firstName = "Scott" AND lastName = "Barlow" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "N", "3.1", "3", "0", "0", "2", "3", (SELECT id
        FROM players
        WHERE firstName = "Brian" AND lastName = "Flynn" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "N", "2", "1", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Kevin" AND lastName = "McCarthy" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1", "1", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Jairo" AND lastName = "Diaz" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Scott" AND lastName = "Oberg" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "Y", "1.1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "John" AND lastName = "Gant" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Jordan" AND lastName = "Hicks" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "Y", "0.1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Andrew" AND lastName = "Miller" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "Y", "0", "1", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Magill" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "Y", "1", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Trevor" AND lastName = "May" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "Y", "2", "1", "1", "1", "0", "3", (SELECT id
        FROM players
        WHERE firstName = "Taylor" AND lastName = "Rogers" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "N", "0.2", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Carl" AND lastName = "Edwards Jr." AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "Y", "4.1", "4", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Jalen" AND lastName = "Beeks" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "Y", "0.1", "1", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Diego" AND lastName = "Castillo" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "Y", "1", "0", "0", "0", "2", "2", (SELECT id
        FROM players
        WHERE firstName = "Chaz" AND lastName = "Roe" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "Y", "2", "2", "1", "1", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Ryne" AND lastName = "Stanek" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "Y", "1.1", "1", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Hunter" AND lastName = "Wood" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "N", "0.2", "3", "3", "3", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Adams" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "2", "2", "1", "1", "2", "1", (SELECT id
        FROM players
        WHERE firstName = "Anthony" AND lastName = "Bass" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "1", "1", "1", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Gerson" AND lastName = "Bautista" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "1", "1", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Brandon" AND lastName = "Brennan" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "1", "1", "1", "1", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Festa" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "2", "1", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Cory" AND lastName = "Gearrin" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "1", "2", "1", "1", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Barnes" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1", "2", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "Brasier" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "2", "2", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Colten" AND lastName = "Brewer" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Heath" AND lastName = "Hembree" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1", "2", "1", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Taylor" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1.2", "1", "1", "1", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Marcus" AND lastName = "Walden" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "1.1", "5", "2", "2", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "Weber" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "0.2", "1", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "Buchter" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "Y", "0.1", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Liam" AND lastName = "Hendriks" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "Y", "1", "1", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Joakim" AND lastName = "Soria" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "Y", "1", "0", "0", "0", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Lou" AND lastName = "Trivino" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "Y", "1.1", "0", "0", "0", "1", "3", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Hader" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "Y", "1.2", "1", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Jeremy" AND lastName = "Jeffress" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "1", "0", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Brice" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "1", "3", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Tayron" AND lastName = "Guerrero" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "0.2", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Jon" AND lastName = "Edwards" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "N", "0.1", "2", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "Smith" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "N", "1", "5", "4", "4", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Mark" AND lastName = "Melancon" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "0.1", "2", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Reyes" AND lastName = "Moronta" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "0.2", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Tony" AND lastName = "Watson" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "1", "1", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Elvis" AND lastName = "Luciano" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "N", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Tim" AND lastName = "Mayza" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "N", "3.2", "1", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Thomas" AND lastName = "Pannone" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "N", "1", "3", "2", "2", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Jacob" AND lastName = "Webb" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "N", "0.2", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Grace" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "N", "1.2", "1", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Javy" AND lastName = "Guerra" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "N", "0.2", "0", "0", "0", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Tony" AND lastName = "Sipp" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "2", "0", "0", "0", "3", "4", (SELECT id
        FROM players
        WHERE firstName = "Chris" AND lastName = "Devenski" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "0.1", "3", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Will" AND lastName = "Harris" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "1.2", "1", "1", "1", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Roberto" AND lastName = "Osuna" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "0.2", "1", "1", "1", "2", "0", (SELECT id
        FROM players
        WHERE firstName = "Ryan" AND lastName = "Pressly" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "1", "1", "1", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Hector" AND lastName = "Rondon" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "1", "0", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Jeurys" AND lastName = "Familia" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "1", "1", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Amir" AND lastName = "Garrett" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "N", "1.1", "2", "2", "2", "0", "3", (SELECT id
        FROM players
        WHERE firstName = "Michael" AND lastName = "Lorenzen" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "N", "0.2", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Wandy" AND lastName = "Peralta" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "N", "1", "0", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Austin" AND lastName = "Adams" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "N", "1.1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Victor" AND lastName = "Alcantara" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "N", "0.1", "1", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Buck" AND lastName = "Farmer" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "N", "0.2", "2", "3", "3", "1", "0", (SELECT id
        FROM players
        WHERE firstName = "Daniel" AND lastName = "Stumpf" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "N", "2", "0", "0", "0", "1", "3", (SELECT id
        FROM players
        WHERE firstName = "Miguel" AND lastName = "Castro" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "N", "6", "8", "4", "3", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "David" AND lastName = "Hess" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 20:05:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TEX" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BAL" ))),
    ( "Y", "1", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Aroldis" AND lastName = "Chapman" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "Y", "1", "4", "1", "1", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Chad" AND lastName = "Green" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "Y", "1", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Craig" AND lastName = "Stammen" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "1", "0", "0", "0", "0", "2", (SELECT id
        FROM players
        WHERE firstName = "Trey" AND lastName = "Wingenter" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Kirby" AND lastName = "Yates" AND position = "RP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "6", "6", "1", "1", "2", "6", (SELECT id
        FROM players
        WHERE firstName = "Chris" AND lastName = "Archer" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "Y", "1.2", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Francisco" AND lastName = "Liriano" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "N", "2.1", "4", "4", "4", "2", "2", (SELECT id
        FROM players
        WHERE firstName = "Danny" AND lastName = "Duffy" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "KC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "BOS" ))),
    ( "Y", "7", "4", "1", "1", "1", "9", (SELECT id
        FROM players
        WHERE firstName = "Peter" AND lastName = "Lambert" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "Y", "6.1", "5", "1", "1", "4", "3", (SELECT id
        FROM players
        WHERE firstName = "Dakota" AND lastName = "Hudson" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "Y", "6", "2", "2", "1", "1", "6", (SELECT id
        FROM players
        WHERE firstName = "Jose" AND lastName = "Berrios" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "N", "7.1", "6", "3", "3", "0", "4", (SELECT id
        FROM players
        WHERE firstName = "Jose" AND lastName = "Quintana" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "N", "1", "0", "0", "0", "1", "2", (SELECT id
        FROM players
        WHERE firstName = "Kyle" AND lastName = "Ryan" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:20:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CHC" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "COL" ))),
    ( "N", "1", "2", "1", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Roenis" AND lastName = "Elias" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "N", "5.1", "3", "1", "1", "1", "1", (SELECT id
        FROM players
        WHERE firstName = "Tommy" AND lastName = "Milone" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "6", "7", "3", "3", "0", "5", (SELECT id
        FROM players
        WHERE firstName = "Mike" AND lastName = "Fiers" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "Y", "6", "4", "1", "1", "0", "9", (SELECT id
        FROM players
        WHERE firstName = "Freddy" AND lastName = "Peralta" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "1", "0", "0", "0", "0", "0", (SELECT id
        FROM players
        WHERE firstName = "Sergio" AND lastName = "Romo" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "5", "6", "4", "4", "2", "2", (SELECT id
        FROM players
        WHERE firstName = "Caleb" AND lastName = "Smith" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 14:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIA" ))),
    ( "N", "8", "5", "5", "5", "3", "7", (SELECT id
        FROM players
        WHERE firstName = "Trevor" AND lastName = "Bauer" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CLE" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "MIN" ))),
    ( "N", "6", "6", "3", "3", "3", "3", (SELECT id
        FROM players
        WHERE firstName = "Shaun" AND lastName = "Anderson" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "3.1", "6", "6", "2", "2", "3", (SELECT id
        FROM players
        WHERE firstName = "Edwin" AND lastName = "Jackson" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "N", "5", "3", "1", "1", "2", "6", (SELECT id
        FROM players
        WHERE firstName = "Jaime" AND lastName = "Barria" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "N", "4", "6", "6", "5", "4", "4", (SELECT id
        FROM players
        WHERE firstName = "Tyler" AND lastName = "Skaggs" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:07:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "LAA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "OAK" ))),
    ( "N", "6", "6", "3", "3", "1", "5", (SELECT id
        FROM players
        WHERE firstName = "Mike" AND lastName = "Foltynewicz" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "N", "1", "1", "1", "1", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Sean" AND lastName = "Newcomb" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:35:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "PIT" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "ATL" ))),
    ( "N", "5", "5", "5", "3", "5", "6", (SELECT id
        FROM players
        WHERE firstName = "Patrick" AND lastName = "Corbin" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "2", "0", "0", "0", "3", "4", (SELECT id
        FROM players
        WHERE firstName = "Josh" AND lastName = "James" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "6.1", "5", "3", "3", "0", "7", (SELECT id
        FROM players
        WHERE firstName = "Justin" AND lastName = "Verlander" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 15:40:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SEA" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "HOU" ))),
    ( "Y", "1", "0", "0", "0", "0", "1", (SELECT id
        FROM players
        WHERE firstName = "Seth" AND lastName = "Lugo" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "Y", "7", "3", "3", "3", "1", "6", (SELECT id
        FROM players
        WHERE firstName = "Zack" AND lastName = "Wheeler" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 12:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYM" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SF" ))),
    ( "N", "5", "6", "1", "1", "1", "7", (SELECT id
        FROM players
        WHERE firstName = "Anthony" AND lastName = "DeSclafani" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:15:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "STL" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "CIN" ))),
    ( "N", "5.2", "11", "3", "3", "1", "6", (SELECT id
        FROM players
        WHERE firstName = "Daniel" AND lastName = "Norris" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 13:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "DET" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TB" ))),
    ( "Y", "7", "4", "1", "1", "0", "4", (SELECT id
        FROM players
        WHERE firstName = "J.A." AND lastName = "Happ" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 19:00:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "TOR" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "NYY" ))),
    ( "Y", "5", "4", "4", "4", "3", "5", (SELECT id
        FROM players
        WHERE firstName = "Joey" AND lastName = "Lucchesi" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" ))),
    ( "Y", "1", "0", "0", "0", "0", "3", (SELECT id
        FROM players
        WHERE firstName = "Matt" AND lastName = "Wisler" AND position = "SP" AND teamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" )), (SELECT id
        FROM games
        WHERE startTime = "2019-06-06 22:10:00" AND homeTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "SD" ) AND awayTeamId = (SELECT id
            FROM teams
            WHERE teamAbbreviation = "WSH" )));