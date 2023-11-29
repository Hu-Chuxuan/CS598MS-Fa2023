SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, directors, writers, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
FROM title_basics
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_crew.directors = name_basics.nconst OR title_crew.writers = name_basics.nconst
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Action%'
GROUP BY tconst
HAVING COUNT(DISTINCT name_basics.primaryName) > 10  -- user has rated more than 10 movies
ORDER BY averageRating DESC