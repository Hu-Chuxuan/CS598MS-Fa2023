SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' AND genres LIKE '%Action%'
AND primaryTitle NOT IN ('Get Out (2017)', 'Click  (2010)')
ORDER BY averageRating DESC
LIMIT 5