SELECT * FROM title_basic WHERE rating >= $rating AND user_prefered LIKE %$input% AND genre IN ('Action/Adventure','Comedy') ORDER BY rating DESC LIMIT $limit