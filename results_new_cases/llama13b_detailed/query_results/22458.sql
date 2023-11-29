SELECT t1.title_basics, t2.name_basics, t3.title_ratings
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
JOIN title_ratings t3 ON t1.tconst = t3.tconst
WHERE t1.titleType ='movie'
AND t3.averageRating > 6.5
AND t2.primaryProfession LIKE '%actor%'
AND t1.genres LIKE '%Comedy%'
AND t1.startYear <= 2012
AND t1.endYear >= 2008
AND t3.numVotes > 1000

ORDER BY t3.averageRating DESC, t1.primaryTitle ASC