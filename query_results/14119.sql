SELECT * FROM imdb WHERE (titleType = "movie" AND genre IN ('Comedy','Romance')) OR (genre IN ("Drama") AND rating >= 7)