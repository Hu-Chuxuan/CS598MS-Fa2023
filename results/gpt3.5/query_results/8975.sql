SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%nanny%' AND primaryTitle LIKE '%doll%'
ORDER BY averageRating DESC
LIMIT 5