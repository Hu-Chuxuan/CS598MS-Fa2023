SELECT * FROM title_basic WHERE titleType = "movie" AND
(averageRating > 6 OR averageRating < 3 )AND
title_rating IN ('Terminator 2: Judgment Day (1991), Total Recall (1990), Robocop (1987)) ORDER BY rating DESC