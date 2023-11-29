SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Romance%' 
AND title_basics.genres LIKE '%Drama%'
AND title_ratings.averageRating > 7
AND title_basics.primaryTitle NOT IN ('The Shape of Water', 'Goodfellas')
ORDER BY title_ratings.averageRating DESC, title_ratings.numVotes DESC
LIMIT 5