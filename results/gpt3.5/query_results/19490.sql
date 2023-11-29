SELECT tb1.tconst, tb1.primaryTitle, tb1.startYear, tb1.runtimeMinutes, tb1.genres, tr.averageRating, tr.numVotes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.originalTitle = 'Deadpool'
AND tb1.startYear = 2016