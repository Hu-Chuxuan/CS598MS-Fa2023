SELECT t1.title, t1.tconst, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres LIKE '%thriller%'
AND t2.averageRating > 6
AND t2.numVotes > 1000
AND t1.tconst NOT IN (SELECT tconst FROM title_basics WHERE title LIKE '%The Purge%')
AND NOT EXISTS (SELECT 1 FROM title_basics t3 WHERE t3.tconst = t1.tconst AND t3.primaryTitle LIKE '%The Purge%')
ORDER BY t2.averageRating DESC