SELECT * FROM title_ratings WHERE avg(rating)>=8 AND genre IN ('Horror') ORDER BY rating DESC LIMIT 6