SELECT * FROM titles WHERE rating >= 7 AND genre = "drama" ORDER BY ABS(year - 1950) DESC LIMIT 2