SELECT t.* FROM imdb_movie AS m INNER JOIN imdb_title_ratings as r ON m.imdbID = r.title_id WHERE m.genres LIKE '%Science Fiction%' AND m.year >= 2008