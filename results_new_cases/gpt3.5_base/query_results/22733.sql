SELECT tb1.primaryTitle AS recommended_movie
FROM title_basics tb1
JOIN title_basics tb2 ON tb1.genres = tb2.genres
WHERE tb2.primaryTitle = 'The Manchurian Candidate'
AND tb2.startYear = 2004
AND tb1.primaryTitle NOT IN ('Fargo', 'A Quiet Place', 'World War Z')
AND tb1.titleType = 'movie'
ORDER BY tb1.averageRating DESC
LIMIT 5