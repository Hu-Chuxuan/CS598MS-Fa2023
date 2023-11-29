SELECT t.title_basics, t.title_ratings, n.name_basics
FROM title_basics t
JOIN name_basics n ON t.directors = n.nconst
WHERE t.titleType ='movie' AND t.startYear = 1998 AND t.genres LIKE '%War%'
ORDER BY t.averageRating DESC