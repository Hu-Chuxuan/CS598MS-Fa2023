SELECT t.title, t.startYear, t.runtimeMinutes, t.genres, c.name AS director, w.name AS writer
FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.directors = n.nconst
JOIN title_crew c ON t.directors = c.directors
JOIN title_principals p ON t.tconst = p.tconst
WHERE t.genres LIKE '%Action%'
AND tr.averageRating > (
    SELECT AVG(tr2.averageRating)
    FROM title_ratings tr2
    WHERE tr2.tconst IN (SELECT tconst FROM title_ratings WHERE user_id = <current_user_id>)
)
AND NOT EXISTS (
    SELECT 1
    FROM title_ratings tr3
    WHERE tr3.tconst = t.tconst AND tr3.user_id = <current_user_id>
)
ORDER BY t.startYear DESC, t.runtimeMinutes ASC
LIMIT 5