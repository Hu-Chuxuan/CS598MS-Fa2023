SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Romance', tb.genres) > 0
AND startYear > 2000
AND (SELECT COUNT(*) FROM title_ratings tr WHERE tr.title = tb.primaryTitle AND tr.averageRating > 6) > 0