SELECT DISTINCT
    movies.*, ratings.*
FROM (title_ratings AS r
INNER JOIN title_basic as tb ON tb.movieId = r.movieID)
LEFT OUTER JOIN (name_ratings AS nr INNER JOIN name_basic NB ON NR.actorId = NB.actorId)
ON RATINGS.MOVIE_ID=TB.MOVIE_ID AND TITLE_RATINGS.AVERAGE_RATING >= 7 WHERE RATINGS.GENRES LIKE 'Comedy%' OR GENRES LIKE '%Comedy%'