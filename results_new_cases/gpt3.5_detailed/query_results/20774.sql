SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('Get Him to the Greek (2010)', 'Get Out (2017)')
ORDER BY averageRating DESC
LIMIT 5