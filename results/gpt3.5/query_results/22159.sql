SELECT tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.titleType = 'movie'
AND tb1.startYear = 1999
AND tb1.primaryTitle != 'Love Stinks'
AND tb1.genres LIKE '%Comedy%'
AND tr.averageRating > 7
ORDER BY tr.numVotes DESC
LIMIT 5