SELECT tb2.primaryTitle 
FROM title_basics AS tb1 
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres 
WHERE tb1.primaryTitle = 'Star Wars' 
AND tb1.startYear = 1977 
AND tb2.startYear > tb1.startYear 
AND tb2.titleType = 'movie' 
AND tb2.averageRating > 7 
AND tb2.numVotes > 1000 
AND tb2.primaryTitle NOT IN ('Star Wars', 'American Psycho', 'Psycho') 
ORDER BY tb2.averageRating DESC, tb2.numVotes DESC 
LIMIT 1