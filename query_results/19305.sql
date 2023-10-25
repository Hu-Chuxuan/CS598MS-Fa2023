SELECT * FROM
( SELECT t.*, r.*, c.*, p.*, m.*
FROM movies AS t INNER JOIN ratings as r ON r.movieId = t.id INNER JOIN names AS n ON n.titleId=t.id INNER JOIN crew AS c ON c.movieId=t.id INNER JOIN principals AS p ON p.movieId=t.id INNER JOIN titles AS m WHERE (r.averageRating > 6 OR r.numVotes>5))
WHERE (m.genre LIKE '%Comedy%' AND genre!='Drama')AND (c.job NOT IN ('Director','Writer'))ORDER BY avg(r.rating)