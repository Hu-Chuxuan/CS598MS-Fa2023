SELECT * FROM title_recommendation WHERE
(title_type = "drama" AND genre IN ("Sci-Fi", "Action")) OR
(title_type!= "Drama")
ORDER BY rating DESC