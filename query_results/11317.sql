SELECT * FROM imdb WHERE title_type = "movie" AND (title_genre IN ('adventure','comedy') OR rating > 7)