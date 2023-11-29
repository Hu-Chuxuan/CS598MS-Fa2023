SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND startYear < 2009
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('The Fox and the Hound', 'The Lion King')
ORDER BY averageRating DESC
LIMIT 1