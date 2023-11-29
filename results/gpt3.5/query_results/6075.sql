SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Family%'
AND (originalTitle = 'Zootopia' OR originalTitle = "A Dog's Purpose" OR originalTitle = 'Toy Story')
AND startYear > 1990
ORDER BY averageRating DESC
LIMIT 5