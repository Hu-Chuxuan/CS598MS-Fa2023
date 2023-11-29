SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres 
FROM title_basics AS tb1 
INNER JOIN title_basics AS tb2 ON tb1.genres = tb2.genres 
WHERE tb2.primaryTitle = 'Cocoon' 
AND tb2.startYear = 1985 
AND tb1.titleType = 'movie' 
AND tb1.primaryTitle NOT IN ('Fargo', 'Heathers') 
ORDER BY tb1.averageRating DESC, tb1.numVotes DESC 
LIMIT 5