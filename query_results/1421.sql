SELECT * FROM rating_movies WHERE genre = "Action" AND year BETWEEN 1900 AND 2020 ORDER BY avg(rating)