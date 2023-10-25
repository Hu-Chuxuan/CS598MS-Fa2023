SELECT * FROM
( SELECT tc.*, nr.*, np.*, tc.genre AS genre_movie, nr.averageRatintg as rating_movies
FROM imdb.title_basic tb LEFT JOIN imdb.name_basic n ON tb.primaryTitle = n.primaryName
LEFT JOIN imdb.rating_basic rb ON rb.titleID = tb.id AND rb.voteGiverId IN ('user')
LEFT JOIN imdb.title_crew tc ON tb.id = tc.titleID
LEFT JOIN imdb.rating_movies rm ON tb.id=rm.titleID
WHERE tb.isAdult='false' AND tb.startYear>2006 AND tb.runtimeMinutes<=87 AND tb.numVotes>=100
ORDER BY SUM((nr.averageRating+np.averageRating)/2)+SUM(tc.genre), SUM(rb.voteGiversNum) DESC