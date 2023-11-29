SELECT t.title, t.averageRating, t.numVotes, n.primaryName, n.birthYear, n.deathYear, n.primaryProfession, c.category, c.job, c.characters
FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.title
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN title_crew c ON t.tconst = c.tconst
WHERE t.genres LIKE '%romance%' AND t.endYear > 2010 AND t.runtimeMinutes < 120
AND tr.averageRating > 7 AND tr.numVotes > 1000
AND n.primaryProfession = 'Actress'
AND c.category = 'Actress'
AND c.job = 'Lead'
AND c.characters LIKE '%female%'