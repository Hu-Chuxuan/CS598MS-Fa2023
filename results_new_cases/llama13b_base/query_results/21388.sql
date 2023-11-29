SELECT t1.title, t1.averageRating, t1.numVotes, t2.primaryName, t2.birthYear, t2.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
WHERE t1.titleType = 'Kids' AND t2.averageRating > (SELECT AVG(t3.averageRating) FROM title_ratings t3 WHERE t3.tconst IN (SELECT t4.tconst FROM title_ratings t4 WHERE t4.primaryName = 'Love Actually (2003)'))
ORDER BY t1.averageRating DESC, t1.numVotes DESC