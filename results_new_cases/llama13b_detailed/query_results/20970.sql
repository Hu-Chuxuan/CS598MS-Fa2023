SELECT t.title_id, t.primary_title, t.original_title, t.genres, t.runtime_minutes, t.start_year, t.end_year, t.is_adult, c.category, c.job, c.characters
FROM title_basics t
JOIN title_crew c ON t.title_id = c.tconst
JOIN title_principals p ON c.directors = p.nconst OR c.writers = p.nconst
WHERE t.genres LIKE '%Action%' AND t.genres LIKE '%Comedy%' AND t.genres LIKE '%Marvel%'
GROUP BY t.title_id, t.primary_title, t.original_title, t.genres, t.runtime_minutes, t.start_year, t.end_year, t.is_adult, c.category, c.job, c.characters
HAVING COUNT(DISTINCT p.nconst) > 10  -- at least 10 principals (directors or writers)
ORDER BY t.start_year DESC, t.end_year DESC, t.primary_title ASC