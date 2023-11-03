SELECT DISTINCT t.* FROM titles AS t JOIN casts AS c ON t.titleId = c.movieId WHERE t.primaryTitle LIKE '%' + :userInput + '%' AND t.isAdult <> true AND t.startYear > 1800 AND t.endYear < 2016