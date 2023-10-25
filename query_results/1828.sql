SELECT * FROM title WHERE title_type = "movie" AND
(title_genre IN ('drama','thriller') OR title_rating >= 8/10)