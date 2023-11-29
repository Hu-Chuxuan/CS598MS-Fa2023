SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres,
       AVG(rating) AS averageRating, COUNT(*) AS numVotes
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.directors = name_basics.nconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear <= 1995 AND endYear >= 1994
AND (primaryTitle LIKE '%Fiction%' OR originalTitle LIKE '%Fiction%')
AND (genres LIKE '%Crime%' OR genres LIKE '%Thriller%')
GROUP BY tconst
HAVING averageRating > (SELECT AVG(rating) FROM title_ratings WHERE tconst = 'tt0053137')
ORDER BY averageRating DESC