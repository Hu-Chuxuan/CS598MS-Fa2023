SELECT primaryTitle
FROM title_basics
WHERE genres LIKE '%Thriller%' AND startYear > 2013
ORDER BY averageRating DESC
LIMIT 5