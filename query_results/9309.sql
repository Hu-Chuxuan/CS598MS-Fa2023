SELECT movies.* FROM title_ratings ratings INNER JOIN title_principals principals ON ratings.title_id = principals.title_id INNER JOIN titles movies ON principal.movies_id=titles.movie_id WHERE rating >= 8 AND rating <= 9 OR rating > 7