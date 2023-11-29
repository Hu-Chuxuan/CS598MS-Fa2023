SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2010
AND titleType = 'movie'
AND primaryTitle NOT IN ('American Sniper', 'Castaway', 'SEAL Team 8: Behind Enemy Lines')
ORDER BY averageRating DESC
LIMIT 5