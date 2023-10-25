SELECT movies.* FROM rating r
INNER JOIN ratings rr ON r.movieId = rr.id
WHERE r.user_id='$userId' AND r.date >= CURRENT DATE - INTERVAL $days DAY