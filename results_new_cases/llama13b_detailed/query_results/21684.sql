SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON t.tconst = p.tconst
WHERE t.titleType ='movie' AND t.isAdult = 0
AND (
    (n.primaryProfession LIKE '%actor%' AND n.knownForTitles LIKE '%The Great Gatsby%')
    OR (c.directors LIKE '%Baz Luhrmann%' OR c.writers LIKE '%Baz Luhrmann%')
    OR (p.job LIKE '%actor%' AND p.characters LIKE '%Leonardo DiCaprio%')
)
ORDER BY t.startYear DESC, t.runtimeMinutes DESC