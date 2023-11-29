SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE (tb1.startYear > 2009 OR tb1.startYear < 1994)
AND tb1.titleType = 'movie'
AND tb1.genres LIKE '%Comedy%'
AND tb1.tconst NOT IN ('tt0109686', 'tt0364828', 'tt0109040') 
ORDER BY tr.numVotes DESC
LIMIT 5