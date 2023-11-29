SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('Ponyo', 'Spirited Away', 'Princess Mononoke (1997)')
ORDER BY averageRating DESC
LIMIT 5