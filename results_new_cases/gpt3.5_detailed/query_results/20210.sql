SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Fantasy%' OR genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Big Fish (2003)', 'The Hangover (2009)', 'The Lord of the Rings ', 'Sisters (2015)')
ORDER BY averageRating DESC
LIMIT 5