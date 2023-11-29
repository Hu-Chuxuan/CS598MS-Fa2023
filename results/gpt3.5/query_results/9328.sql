SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratigns.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName = 'Jennifer Lawrence'
AND title_basics.titleType = 'movie'
AND primaryTitle NOT IN ('X-Men', 'Passengers')
ORDER BY averageRating DESC
LIMIT 5