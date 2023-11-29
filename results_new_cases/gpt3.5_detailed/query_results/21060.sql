SELECT t.tconst, t.primaryTitle, t.startYear, t.runtimeMinutes, t.genres, r.averageRating, r.numVotes
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.titleType = 'movie' 
AND t.genres LIKE '%Action%'
AND t.isAdult = 0
AND t.startYear <= YEAR(CURDATE())
ORDER BY r.averageRating DESC, r.numVotes DESC
LIMIT 1