SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear = 2006 AND genres LIKE '%Crime%'
AND (directors LIKE '%Martin Scorsese%' OR writers LIKE '%Martin Scorsese%')
AND (name_basics.primaryName LIKE '%Leonardo DiCaprio%' OR name_basics.knownForTitles LIKE '%The Departed (2006)%')
GROUP BY tconst
HAVING COUNT(DISTINCT name_basics.primaryName) > 1
ORDER BY averageRating DESC