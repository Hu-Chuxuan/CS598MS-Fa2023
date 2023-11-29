SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND genres LIKE '%Comedy%' 
AND genres LIKE '%Family%'
AND startYear >= 2000 
AND startYear <= 2022
AND primaryTitle NOT IN ('Frozen', 'Finding Nemo')
ORDER BY averageRating DESC
LIMIT 5