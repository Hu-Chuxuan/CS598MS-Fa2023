SELECT t.* FROM imdb_movies AS m INNER JOIN imdb_title_ratings r ON m.imdbID = r.movieId AND r.vote > 0