SELECT DISTINCT titles.* FROM rating_history WHERE user =? AND genre IN ('Horror','Mystery') ORDER BY rating DESC LIMIT 8