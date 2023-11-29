SELECT t1.title, t1.averageRating, t1.numVotes, t2.director, t3.job
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t2.directors = t3.primaryName
WHERE t1.directors = 'Steven Spielberg' AND t1.genres = 'Horror' AND t2.averageRating > 7
GROUP BY t1.title
HAVING COUNT(DISTINCT t3.job) > 2
ORDER BY t1.averageRating DESC