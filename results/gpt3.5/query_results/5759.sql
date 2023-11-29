SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Sci-Fi%' OR genres LIKE '%Comedy%' OR genres LIKE '%Horror%'
AND primaryTitle NOT IN ('The Matrix', 'Life', 'Passengers', 'The Martian')
ORDER BY averageRating DESC
LIMIT 10