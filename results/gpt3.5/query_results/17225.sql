SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Sci-Fi%'
AND tb1.tconst NOT IN ('tt0133093', 'tt0076759', 'tt1856101', 'tt0330373', 'tt0060196') 
AND tr.averageRating > 7.5
ORDER BY tr.numVotes DESC
LIMIT 5