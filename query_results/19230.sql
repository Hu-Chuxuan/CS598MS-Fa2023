SELECT tb.* FROM title_basics AS tb INNER JOIN
( SELECT avg(rating), COUNT(*) as votes FROM rating WHERE
titleType = "movie" GROUP BY averageRating ) AS r ON r.avgRATING <= 6 AND r.votes >= 7