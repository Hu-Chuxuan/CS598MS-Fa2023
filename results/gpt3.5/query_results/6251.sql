SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear IN (2015, 2008) 
AND primaryTitle NOT IN ('Inside Out', 'Marley & Me', 'The Fault in Our Stars') 
AND (genres LIKE '%Romance%' OR genres LIKE '%Drama%') 
ORDER BY averageRating DESC, numVotes DESC 
LIMIT 5