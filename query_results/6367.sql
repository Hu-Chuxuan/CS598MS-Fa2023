SELECT * FROM title_basic WHERE titleType = "Drama" AND
(originalTitle LIKE "%Hunt%" OR primaryTitle like "%hunt%") ORDER BY numVotes DESC LIMIT 5