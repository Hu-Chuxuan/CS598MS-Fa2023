SELECT * FROM movies WHERE
(movieId IN ('Prince of the City', 'No Country for Old Men') OR
title_basics.primaryTitle LIKE '%Prince%')