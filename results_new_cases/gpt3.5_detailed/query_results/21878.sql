SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND genres LIKE '%Zombie%'
AND startYear > 2008
AND primaryTitle NOT IN ('Superbad', 'Dumb and Dumber', 'Pineapple Express')
ORDER BY averageRating DESC
LIMIT 5