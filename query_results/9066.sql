SELECT * FROM title_basic WHERE tconst = 'Salt' AND (isAdult!= 'Y') ORDER BY avg(rating) DESC LIMIT 5