SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND isAdult = 0 
AND startYear < 2018 
AND genres LIKE '%Comedy%' 
AND genres LIKE '%Action%'
AND primaryTitle NOT LIKE '%Deadpool 2%' 
AND primaryTitle NOT IN ('The Sixth Sense (1999)', 'Oldboy  (2003)')
ORDER BY averageRating DESC 
LIMIT 1