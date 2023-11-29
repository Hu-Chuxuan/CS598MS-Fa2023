SELECT t1.title_id, t1.title, t1.startYear, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.title_id = t2.title_id
WHERE t1.genres LIKE '%adventure%' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.title_id IN (SELECT t4.title_id FROM title_basics t4 WHERE t4.primaryTitle = 'The Amityville Horror'))
ORDER BY t2.averageRating DESC, t1.startYear DESC