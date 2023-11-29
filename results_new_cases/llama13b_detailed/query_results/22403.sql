SELECT t.title_basics, t.title_ratings, n.name_basics
FROM title_basics t
JOIN name_basics n ON t.directors = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND t.isAdult = 0
AND n.primaryProfession LIKE '%Director%'
AND t.startYear = 1980
ORDER BY t.averageRating DESC, t.startYear DESC