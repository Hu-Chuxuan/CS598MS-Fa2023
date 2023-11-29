SELECT tb1.primaryTitle AS recommended_movie, tr.averageRating, tr.numVotes
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
JOIN title_crew AS tc ON tb1.tconst = tc.tconst
JOIN name_basics AS nb ON tc.directors LIKE CONCAT('%', nb.nconst, '%') 
WHERE tb1.startYear >= 1960 
AND tb1.startYear <= 1970 
AND tb1.genres LIKE CONCAT('%Comedy%') 
AND tb1.tconst NOT IN ('tt0059956', 'tt0264747', 'tt0113497', 'tt0349205')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5