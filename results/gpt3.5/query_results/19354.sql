SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND primaryTitle NOT IN ('Despicable Me 2', 'Despicable Me')
AND genres LIKE '%Animation%'
ORDER BY averageRating DESC
LIMIT 1