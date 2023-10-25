SELECT * FROM title WHERE titleType = "Movie" AND
(isAdult = false OR isAdult IS NULL)