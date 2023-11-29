SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2010
AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('RoboCop', 'Wonder Woman', 'Die Hard')
ORDER BY averageRating DESC
LIMIT 5