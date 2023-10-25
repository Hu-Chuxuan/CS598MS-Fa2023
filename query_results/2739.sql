SELECT * FROM imdb_movie
WHERE title_type = "comedy" AND genre IN ("horror")
AND userPreferencedMovie NOT LIKE "%flatliners%" OR userPreferencedMovie NOT LIKE "%hangover%"