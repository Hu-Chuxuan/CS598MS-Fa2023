SELECT DISTINCT tb.* FROM imdb.title_basic AS tb JOIN imdb.name_basic AS nb ON tb.primaryName = nb.nconst WHERE NOT EXISTS( SELECT * FROM imdb.recommendation WHERE rq.userID=? AND rq.movieID IN (tb.tconst)) GROUP BY tb.tconst ORDER BY COUNT(*) DESC LIMIT?