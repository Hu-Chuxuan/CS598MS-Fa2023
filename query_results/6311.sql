SELECT * FROM title_recommendation WHERE
(title_type = "Comedy" AND rating >= 7 OR title_genre IN ('Comedy'))