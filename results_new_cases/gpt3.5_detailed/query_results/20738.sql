SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%' OR genres LIKE '%Adventure%'
AND (primaryTitle LIKE '%Marvel%' OR primaryTitle LIKE '%Avengers%')
ORDER BY averageRating DESC
LIMIT 5