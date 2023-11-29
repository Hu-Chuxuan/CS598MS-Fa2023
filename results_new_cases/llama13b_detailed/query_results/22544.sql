SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.genres, t2.name, t2.birthYear, t2.deathYear, t2.knownForTitles, t3.averageRating, t3.numVotes
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
JOIN title_ratings t3 ON t1.tconst = t3.tconst
WHERE t1.titleType ='movie' AND t1.genres LIKE '%Animation%' AND t2.knownForTitles LIKE '%Animation%'
AND (t3.averageRating > 6 OR t3.numVotes > 1000)
GROUP BY t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.genres, t2.name, t2.birthYear, t2.deathYear, t2.knownForTitles, t3.averageRating, t3.numVotes
HAVING COUNT(DISTINCT t2.name) > 1
ORDER BY t3.averageRating DESC, t1.primaryTitle ASC