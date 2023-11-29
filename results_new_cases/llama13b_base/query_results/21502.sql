SELECT t1.title, t1.startYear, t1.runtimeMinutes, t2.averageRating, t2.numVotes, t3.primaryName, t3.birthYear, t3.knownForTitles
FROM title_basics t1
JOIN title_ratings t2 ON t1.tconst = t2.tconst
JOIN name_basics t3 ON t1.primaryTitle = t3.primaryName
WHERE t1.genres LIKE '%romance%' AND t1.startYear BETWEEN 2000 AND 2020
AND t2.averageRating > 7 AND t2.numVotes > 1000
AND t3.primaryProfession = 'Actor'
AND t3.knownForTitles NOT IN (SELECT title FROM title_basics WHERE primaryName = 'Leonardo DiCaprio')
GROUP BY t1.title, t1.startYear, t1.runtimeMinutes
HAVING COUNT(DISTINCT t3.primaryName) > 2
ORDER BY t1.startYear DESC, t1.runtimeMinutes ASC