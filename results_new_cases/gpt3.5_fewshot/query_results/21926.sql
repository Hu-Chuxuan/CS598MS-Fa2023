SELECT tb.primaryTitle
FROM title_basics tb
WHERE FIND_IN_SET('Comedy', tb.genres) > 0
AND tb.startYear < 2022
ORDER BY tb.averageRating DESC
LIMIT 1