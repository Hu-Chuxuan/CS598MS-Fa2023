SELECT * FROM (
    SELECT t.*, rr.rating AS `averageRating`, COUNT(*) OVER () AS totalReviews
FROM titleratings rr
INNER JOIN titles t ON rr.`tconst` = t.`tconst` AND rr.`numvotes` >= 20
WHERE t.`startyear` > 1980 OR t.`endyear` < 1980
GROUP BY t.`tconst`, t.`primaryTitle`, rr.`numvotes`
ORDER BY t.`isAdult` DESC, rr.`avgRating` ASC, totalReviews DESC)