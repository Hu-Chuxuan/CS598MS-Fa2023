SELECT t.title_id, t.titleType, t.primaryTitle, t.originalTitle, t.isAdult, t.startYear, t.endYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
WHERE t.genres LIKE '%Mystery%'
AND p.category NOT IN ('self', 'actor')
ORDER BY t.startYear DESC, t.runtimeMinutes DESC