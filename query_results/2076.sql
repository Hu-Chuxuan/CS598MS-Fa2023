SELECT * FROM tconst WHERE rating >= avg(rating) AND genre = "Horror" AND genre <> "Gory"