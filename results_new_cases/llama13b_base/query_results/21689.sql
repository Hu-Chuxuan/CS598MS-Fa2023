SELECT t1.title, t1.startYear, t1.runtimeMinutes, t1.genres, t2.averageRating, t2.numVotes
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.genres = 'Comedy' AND t1.startYear = 1989
AND t2.averageRating > (SELECT AVG(t3.rating)
                     FROM title_ratings t3
                     WHERE t3.tconst = t1.tconst)
AND t2.numVotes > 100
AND t1.title!= 'The 'Burbs (1989)'
AND t1.title NOT IN (SELECT t4.title
                     FROM title_basics t4
                     WHERE t4.primaryName = 'John Goodman')
ORDER BY t2.averageRating DESC