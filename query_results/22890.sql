SELECT title_rating.* FROM title_rating WHERE rating >=.7 AND genre IN ('Comedy', 'Horror') ORDER BY rating DESC LIMIT 1