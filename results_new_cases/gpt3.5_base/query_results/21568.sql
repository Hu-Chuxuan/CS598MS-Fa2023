SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Thriller%'
AND startYear = 1999
AND averageRating > 7
AND primaryTitle != 'The Sixth Sense'
ORDER BY averageRating DESC
LIMIT 5