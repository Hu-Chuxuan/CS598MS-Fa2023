SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' OR genres LIKE '%Thriller%'
AND primaryTitle NOT IN ('Winchester (2018)', 'The Exorcist  (1973)', 'It Follows (2014)', 'Friday the 13th  (1980)')
ORDER BY averageRating DESC
LIMIT 10