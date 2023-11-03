SELECT * FROM (title_rating JOIN title_details ON rating.movieId = details.id) WHERE year >= "2018" AND genre IN ("Action", "Comedy") ORDER BY AVG(rating)