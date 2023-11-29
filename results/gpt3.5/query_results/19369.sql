SELECT primaryTitle 
FROM title_basics 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
JOIN name_basics ON title_principals.nconst = name_basics.nconst 
WHERE primaryName = 'Jennifer Garner'
AND title_basics.titleType = 'movie'
AND startYear >= 2000
AND primaryTitle NOT IN ('Catch Me If You Can', '13 Going on 30')
ORDER BY averageRating DESC 
LIMIT 5