SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryName = t3.primaryName
WHERE t1.genres LIKE '%Horror%'
AND t2.averageRating > 6.5
AND t2.numVotes > 1000
AND t3.knownForTitles LIKE '%The Possession%'
OR t3.knownForTitles LIKE '%Evil Dead%'
ORDER BY t2.averageRating DESC, t1.startYear DESC