SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, nconst, name, birthYear, deathYear, primaryProfession, knownForTitles
FROM title_basics
JOIN name_basics ON title_basics.primaryTitle = name_basics.primaryName
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0 AND startYear < 1980 AND endYear > 1970 AND runtimeMinutes < 2 AND genres LIKE '%Romance%' AND knownForTitles LIKE '%black and white%'
GROUP BY tconst
HAVING COUNT(DISTINCT name) > 10
ORDER BY startYear DESC