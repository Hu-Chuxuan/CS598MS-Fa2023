SELECT * FROM title_basics WHERE tconst = "movie" AND (startYear < '2019' OR startYear > '2016') GROUP BY genre