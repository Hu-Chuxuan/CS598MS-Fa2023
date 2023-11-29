SELECT t1.title, t1.averageRating, t1.numVotes, t2.director, t2.writer
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%Marvel%' AND t2.averageRating > 7
ORDER BY t1.averageRating DESC