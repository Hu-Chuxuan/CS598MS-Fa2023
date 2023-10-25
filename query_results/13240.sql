SELECT t1.* FROM
(title_ratings r LEFT JOIN
title_crew c ON r.id = c.movieId AND c.job = "Director") AS d RIGHT JOIN
title_principals p ON d.id = p.movieId WHERE d.numVotes >= :min AND d.averageRating > :avg