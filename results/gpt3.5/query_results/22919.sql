SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Animation%' 
AND genres LIKE '%Family%'
AND genres LIKE '%Fantasy%'
AND startYear < 1991
AND primaryTitle NOT LIKE '%Snow White%'
AND primaryTitle NOT LIKE '%Bambi%'
AND primaryTitle NOT LIKE '%Beauty and the Beast%'
ORDER BY averageRating DESC
LIMIT 5