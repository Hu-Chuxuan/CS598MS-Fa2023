SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear <= 2001
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('The Royal Tenenbaums', 'Amélie', 'Airplane!')
ORDER BY averageRating DESC
LIMIT 5