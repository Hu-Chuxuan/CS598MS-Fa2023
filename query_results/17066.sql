SELECT * FROM
title_rating INNER JOIN title_crew ON title_rating.id = title_crew.id WHERE title_rating.averageRating > 8 AND title_crew.job IN ('director') ORDER BY title_rating.numvoters DESC LIMIT 1