SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND primaryTitle NOT IN ('The Princess Diaries', 'Cinderella')
AND startYear >= 2000
AND genres LIKE '%Family%'
ORDER BY averageRating DESC
LIMIT 1