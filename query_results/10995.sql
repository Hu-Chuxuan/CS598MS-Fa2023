SELECT t.* FROM (
	SELECT * FROM imdb.title AS t JOIN imdb.rating AS r ON t.imdbID = r.imdbID WHERE ((r.mediaType='Movie') AND (r.voteCount > 1)) ORDER BY AVG(r.value DESC)