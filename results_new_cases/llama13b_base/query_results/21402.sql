SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(averageRating) AS avgRating, 
       COUNT(DISTINCT nconst) AS numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.primaryName = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND 
      primaryName = 'Danny DeVito' AND 
      startYear <= '2022-02-28' AND 
      endYear >= '1950-01-01' AND 
      runtimeMinutes > 80 AND 
      genres LIKE '%comedy%'
GROUP BY tconst
HAVING avgRating > (SELECT AVG(averageRating) FROM title_ratings WHERE nconst = (SELECT nconst FROM name_basics WHERE primaryName = 'Danny DeVito'))
ORDER BY avgRating DESC