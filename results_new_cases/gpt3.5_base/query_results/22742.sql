SELECT primaryTitle, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE '%Comedy%' 
AND genres NOT LIKE '%War%' 
AND primaryTitle NOT IN ('Game Night (2018)', 'What About Bob? (1991)', 'The Interview (2014)', 'Anchorman ') 
ORDER BY averageRating DESC 
LIMIT 10