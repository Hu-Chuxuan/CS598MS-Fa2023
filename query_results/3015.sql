SELECT * FROM title_recommended WHERE rating >= $rating AND genre IN ('Action') ORDER BY avg(rating DESC)