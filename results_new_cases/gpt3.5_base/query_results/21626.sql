SELECT tb1.primaryTitle 
FROM title_basics AS tb1 
JOIN title_basics AS tb2 ON tb1.genres = tb2.genres 
WHERE tb2.primaryTitle = 'Mother\'s Day' AND tb2.startYear = 1980
AND tb1.primaryTitle != 'Mother\'s Day' AND tb1.startYear > 1980
AND tb1.primaryTitle NOT IN ('The Secret Life of Walter Mitty')
ORDER BY tb1.numVotes DESC
LIMIT 5