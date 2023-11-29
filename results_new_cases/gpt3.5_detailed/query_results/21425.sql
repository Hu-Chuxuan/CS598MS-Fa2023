SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Crime%'
AND primaryTitle NOT IN ('The Ring  (2002)', 'The Silence of the Lambs  (1991)')
ORDER BY averageRating DESC
LIMIT 5