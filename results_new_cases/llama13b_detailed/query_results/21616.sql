SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, c.name, c.birthYear, c.deathYear, c.primaryProfession, c.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.primaryTitle = c.primaryName
WHERE t.primaryTitle = 'Rain Man'
AND t.genres LIKE '%Drama%'
AND t.startYear BETWEEN 1980 AND 1990
ORDER BY t.startYear DESC