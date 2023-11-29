SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(averageRating) AS avgRating, 
       COUNT(DISTINCT nconst) AS numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType = 'romantic comedy'
AND isAdult = 0
AND startYear >= 1970
AND endYear <= 2022
AND runtimeMinutes <= 120
AND genres LIKE '%Musical%'
AND (primaryName LIKE '%John%' OR primaryName LIKE '%Olivia%')
GROUP BY tconst
HAVING avgRating > (SELECT avgRating FROM title_ratings WHERE nconst IN (SELECT nconst FROM name_basics WHERE birthYear = 1940 AND deathYear = 2019))