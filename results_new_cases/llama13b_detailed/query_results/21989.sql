SELECT t.title_basics.primaryTitle, t.title_basics.genres, t.title_principals.characters
FROM title_basics t
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON c.tconst = p.tconst
WHERE t.genres LIKE '%Horror%' AND t.genres LIKE '%Comedy%'
AND p.category = 'actor'
AND p.job LIKE '%Blacksmith%'
AND p.characters LIKE '%[Assistant]%'
ORDER BY t.primaryTitle ASC