SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%'
AND startYear >= 1970
AND startYear <= 1980
AND averageRating >= 7
AND primaryTitle NOT IN ('The Texas Chain Saw Massacre (1974)', 'Get Out (2017)')
ORDER BY averageRating DESC
LIMIT 5