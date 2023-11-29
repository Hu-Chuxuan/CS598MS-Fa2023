SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.genres LIKE '%Action%' OR title_basics.genres LIKE '%Adventure%' OR title_basics.genres LIKE '%Fantasy%'
AND title_basics.primaryTitle NOT IN ('X-Men', 'Thor: Ragnarok', 'Wonder Woman')
AND startYear >= 2010
ORDER BY averageRating DESC
LIMIT 5