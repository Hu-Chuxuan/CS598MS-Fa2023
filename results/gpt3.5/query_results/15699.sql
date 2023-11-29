SELECT primaryTitle
FROM title_basics
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres NOT LIKE '%Sci-Fi%'
AND genres NOT LIKE '%Action%'
AND genres NOT LIKE '%Superhero%'
AND genres LIKE '%Drama%'
AND primaryTitle NOT IN ('Breakfast at Tiffany\'s', 'A Wrinkle in Time', 'Legally Blonde')
ORDER BY averageRating DESC
LIMIT 5