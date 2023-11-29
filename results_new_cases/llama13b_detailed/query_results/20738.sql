SELECT t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
FROM title_basics t1
JOIN name_basics t2 ON t1.primaryTitle = t2.primaryName
WHERE t1.genres = 'Superhero' AND t1.startYear >= 2000 AND t1.endYear <= 2022
GROUP BY t1.title, t1.titleType, t1.primaryTitle, t1.originalTitle, t1.isAdult, t1.startYear, t1.endYear, t1.runtimeMinutes, t1.genres, t2.name, t2.birthYear, t2.deathYear, t2.primaryProfession, t2.knownForTitles
HAVING COUNT(DISTINCT t2.name) > 1
ORDER BY t1.startYear DESC, t1.endYear DESC, t1.runtimeMinutes ASC