SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear IS NOT NULL
AND genres LIKE '%Musical%'
AND primaryTitle NOT IN ('Grease', 'Footloose', 'Chicago', 'West Side Story', 'Les Misérables')
ORDER BY averageRating DESC
LIMIT 5