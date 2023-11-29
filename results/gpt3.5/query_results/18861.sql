SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.startYear > 2017
AND title_basics.genres LIKE '%Comedy%'
AND title_ratings.averageRating > 7
AND title_basics.tconst NOT IN ('tt0114709', 'tt3521164', 'tt4116284')