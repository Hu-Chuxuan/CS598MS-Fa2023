SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND startYear >= 2000 
AND averageRating >= 7.5 
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Step Brothers', 'Knocked Up', 'Blackfish')
ORDER BY averageRating DESC
LIMIT 5