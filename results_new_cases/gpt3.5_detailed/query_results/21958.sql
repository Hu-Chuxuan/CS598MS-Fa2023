SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear = 1984
AND genres LIKE '%Sci-Fi%'
AND averageRating > 7
AND primaryTitle NOT IN ('28 Days Later (2002)', 'I Am Legend  (2007)')
ORDER BY averageRating DESC
LIMIT 5