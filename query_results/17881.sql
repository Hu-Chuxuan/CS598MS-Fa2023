SELECT DISTINCT(title_basics.startYear),
(CASE WHEN title_basics.isAdult = TRUE THEN 0 ELSE 1 END) AS Adult,
title_ratings.averageRating FROM title_basics INNER JOIN title_ratings ON title_basics.id=title_ratings.title_id WHERE ((title_basics.startYear BETWEEN? AND?)) AND (((title_basics.genre IN ('Action','Comedy')) OR title_basics.genre IS NULL))) ORDER BY title_basics.startYear DESC LIMIT 5