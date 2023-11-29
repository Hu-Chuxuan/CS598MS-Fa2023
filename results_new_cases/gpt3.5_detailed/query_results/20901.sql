SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Family%'
AND startYear >= 2010
AND averageRating >= 7
AND primaryTitle NOT IN ('The Karate Kid', 'I Now Pronounce You Chuck & Larry', 'Ted', 'The Goonies')
ORDER BY averageRating DESC
LIMIT 5