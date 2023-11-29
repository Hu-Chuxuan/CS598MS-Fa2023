SELECT t.title, t.tconst, t.primaryTitle, t.genres, COUNT(r.tconst) AS numVotes
FROM title_basics t
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%'
GROUP BY t.tconst
HAVING COUNT(r.tconst) > (SELECT AVG(numVotes) FROM title_ratings WHERE titleType ='movie' AND genres LIKE '%Comedy%')
ORDER BY numVotes DESC