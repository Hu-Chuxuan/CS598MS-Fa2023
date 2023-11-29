SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
JOIN name_basics ON title_principals.nconst = name_basics.nconst
WHERE primaryName IN ('Adam Sandler', 'Robin Williams')
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.tconst != 'tt0107614'  -- Exclude Mrs. Doubtfire
ORDER BY averageRating DESC
LIMIT 5