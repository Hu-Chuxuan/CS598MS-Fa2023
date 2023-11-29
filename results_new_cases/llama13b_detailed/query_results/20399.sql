SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles,
       r.averageRating, r.numVotes
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.genres LIKE '%Mystery'
AND t.primaryTitle NOT IN (SELECT n.primaryName FROM name_basics n WHERE n.knownForTitles LIKE '%Documentary%')
AND t.startYear BETWEEN 1990 AND 2020
AND t.runtimeMinutes > 90
AND r.averageRating > 6
AND r.numVotes > 100
ORDER BY r.averageRating DESC, t.primaryTitle ASC