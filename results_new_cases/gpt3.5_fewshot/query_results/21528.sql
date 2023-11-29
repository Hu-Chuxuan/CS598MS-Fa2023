SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Horror', tb.genres) > 0
ORDER BY tb.averageRating DESC
LIMIT 3