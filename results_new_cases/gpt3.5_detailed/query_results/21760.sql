SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tr.averageRating AS rating, tb1.genres
FROM title_basics AS tb1
JOIN title_ratings AS tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Sci-Fi%'
AND tb1.startYear > 1999
AND tb1.tconst NOT IN ('tt0133093', 'tt0115683', 'tt0116483')
ORDER BY tr.numVotes DESC
LIMIT 5