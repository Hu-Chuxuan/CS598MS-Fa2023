SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1980
AND genres LIKE '%Adventure%'
AND primaryTitle NOT IN ('Romancing the Stone', 'Raiders of the Lost Ark')
ORDER BY averageRating DESC
LIMIT 5