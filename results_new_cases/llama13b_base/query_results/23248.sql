SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.category, c.job, c.characters
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.title
JOIN title_principals p ON t.tconst = p.tconst
JOIN crew_basics c ON p.directors = c.person_id OR p.writers = c.person_id
WHERE t.genres = 'Comedy' AND t.startYear >= 1990 AND t.startYear <= 2009
AND NOT EXISTS (SELECT 1 FROM title_ratings tr WHERE t.tconst = tr.tconst AND tr.averageRating > 7.5)
AND NOT EXISTS (SELECT 1 FROM name_basics nb WHERE n.primaryName = t.primaryTitle AND nb.birthYear > 1960 AND nb.birthYear < 2000)
AND EXISTS (SELECT 1 FROM title_principals tp WHERE tp.tconst = t.tconst AND tp.category = 'Actor' AND tp.job = 'Child Actor')
ORDER BY t.startYear, t.runtimeMinutes
LIMIT 5