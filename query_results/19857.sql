SELECT * FROM imdb WHERE
(title_rating > 7 AND rating < 8) OR
(title_rating = 8 AND rating <= 9)