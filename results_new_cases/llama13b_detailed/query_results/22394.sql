SELECT t.tconst, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres,
       n.nconst, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, n.knownForTitles
FROM title_basics t
JOIN name_basics n ON t.directors = n.nconst OR t.writers = n.nconst
WHERE t.genres LIKE '%Serial Killer%'
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%X-Men%'