SELECT * FROM (
    SELECT t.*, rr.*,(CASE WHEN rr.numVotes >= 1 THEN avg(rr.averageRating)/rr.numVotes ELSE NULL END AS AverageRatings)
FROM title_rating rr INNER JOIN title_basics t ON t.titleId = rr.movieID AND t.isAdult = false GROUP BY t.primaryTitle ORDER BY AVG(rr.averageRating))
WHERE t.startYear <= 1980 OR t.endYear > 2018