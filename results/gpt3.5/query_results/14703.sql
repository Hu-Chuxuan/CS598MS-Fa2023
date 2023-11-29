SELECT primaryTitle AS recommended_movie, averageRating, runtimeMinutes, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2010
AND titleType = 'movie'
AND genres LIKE '%Animation%'
AND isAdult = 0
AND primaryTitle NOT IN ('Moana', 'Home')
ORDER BY averageRating DESC, numVotes DESC
LIMIT 5