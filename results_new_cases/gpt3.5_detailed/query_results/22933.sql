SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND primaryTitle NOT IN ('Carrie  (2013)', 'Carrie  (1976)', 'The Shining  (1980)', 'Thinner  (1996)')
ORDER BY averageRating DESC
LIMIT 5