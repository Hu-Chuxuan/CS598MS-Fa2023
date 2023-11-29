SELECT tb.primaryTitle
FROM title_basics tb
WHERE tb.titleType = 'movie'
AND tb.startYear > 2002
ORDER BY tb.averageRating DESC
LIMIT 10