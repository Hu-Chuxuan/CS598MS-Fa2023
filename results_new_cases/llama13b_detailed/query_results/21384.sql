SELECT t.title_basics, t.genres, t.runtimeMinutes, t.directors, t.writers, t.principals, tr.averageRating, tr.numVotes
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
WHERE t.titleType ='movie' AND t.primaryTitle = 'Deadpool 2' AND t.startYear = 2018
AND tr.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE titleType ='movie' AND primaryTitle = 'The Sixth Sense' AND startYear = 1999)
AND tr.averageRating < (SELECT AVG(averageRating) FROM title_ratings WHERE titleType ='movie' AND primaryTitle = 'Oldboy' AND startYear = 2003)
ORDER BY tr.averageRating DESC