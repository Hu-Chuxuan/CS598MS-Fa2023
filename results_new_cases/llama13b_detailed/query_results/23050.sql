SELECT t.title, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, c.name, c.birthYear, c.deathYear, c.primaryProfession, c.knownForTitles
FROM title_basics t
JOIN name_basics c ON t.primaryTitle = c.primaryName
WHERE t.genres = 'Horror' AND t.startYear >= 1980 AND t.endYear <= 1990
AND c.primaryProfession = 'actor'
AND c.knownForTitles = 'It (1990)', 'The Shining (1980)'
ORDER BY t.startYear, t.primaryTitle