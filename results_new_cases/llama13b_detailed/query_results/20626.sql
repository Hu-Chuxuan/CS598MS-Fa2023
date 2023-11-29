SELECT t.title_id, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
WHERE t.genres LIKE '%Comedy%'
AND p.category = 'actor'
AND p.job = 'actor'
AND p.characters NOT LIKE '[""Assistant""]'
AND p.characters NOT LIKE '[""Blacksmith""]'
ORDER BY t.startYear DESC