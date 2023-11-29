SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND primaryTitle NOT IN ('Game Night (2018)', 'Girls Trip (2017)')
ORDER BY averageRating DESC
LIMIT 5