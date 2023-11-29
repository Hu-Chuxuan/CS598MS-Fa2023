SELECT primaryTitle, startYear, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (genres LIKE '%Horror%' OR genres LIKE '%Rom%' OR genres LIKE '%Thriller%')
AND primaryTitle NOT IN ('Halloween (2007)', 'Avengers: Infinity War (2018)', 'Saw (2004)')
ORDER BY averageRating DESC
LIMIT 10