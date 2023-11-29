SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_crew c ON t.tconst = c.tconst
JOIN title_principals p ON t.tconst = p.tconst
JOIN title_ratings r ON t.tconst = r.tconst
WHERE t.titleType ='movie'
AND t.genres LIKE '%Adventure%'
AND t.startYear >= 1980
AND t.endYear <= 1990
AND n.primaryProfession LIKE '%Actor%'
AND c.directors LIKE '%Steven Spielberg%'
AND p.job LIKE '%Director%'
AND r.averageRating > 5
ORDER BY r.averageRating DESC