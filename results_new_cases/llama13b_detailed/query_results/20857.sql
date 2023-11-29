SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE (titleType ='movie' OR titleType ='short') AND (isAdult = 0 OR isAdult = 1) AND (genres LIKE '%scary%' OR genres LIKE '%romantic%')
AND (directors LIKE '%Guillermo del Toro%' OR writers LIKE '%Guillermo del Toro%')
AND (name_basics.primaryName LIKE '%Cate Blanchett%' OR name_basics.primaryName LIKE '%Geoffrey Rush%')
GROUP BY tconst
HAVING COUNT(DISTINCT name_basics.primaryName) > 1
ORDER BY averageRating DESC