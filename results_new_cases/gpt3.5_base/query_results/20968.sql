SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND primaryTitle != 'Click  (2006)'
AND primaryTitle NOT IN ('Click  (2010)', 'I Now Pronounce You Chuck & Larry (2007)', 'Click  (2006)')
ORDER BY averageRating DESC
LIMIT 5