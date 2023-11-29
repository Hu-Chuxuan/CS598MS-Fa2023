SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(averageRating) AS avgRating, 
       COUNT(DISTINCT nconst) AS numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE genres IN ('horror', 'action', 'comedy')
AND startYear <= 2017
AND endYear >= 2006
GROUP BY tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres
HAVING avgRating > 7 AND numVotes > 10000
ORDER BY avgRating DESC