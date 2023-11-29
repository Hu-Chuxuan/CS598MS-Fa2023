SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
WHERE tb.genres LIKE '%Horror%' OR tb.genres LIKE '%Comedy%'
AND tb.primaryTitle NOT IN ('Fargo', 'Apocalypse Now', 'The Usual Suspects', 'Predator', 'Pulp Fiction', "Ocean's 11")
ORDER BY tb.startYear DESC
LIMIT 10