SELECT tb1.tconst, tb1.primaryTitle, tb1.startYear, tb1.genres, tr.averageRating, tr.numVotes
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.startYear <= 1958
AND tb1.startYear >= 1940
AND tb1.tconst NOT IN ('tt0052357', 'tt0048728') 
AND tb1.genres IS NOT NULL
ORDER BY tr.numVotes DESC
LIMIT 10