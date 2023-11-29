SELECT tb1.primaryTitle AS recommended_movie, tb1.startYear AS release_year, tb1.genres
FROM title_basics tb1
JOIN title_ratings tr ON tb1.tconst = tr.tconst
WHERE tb1.genres LIKE '%Foreign%' 
AND tb1.genres LIKE '%Drama%'
AND tb1.startYear >= 1980
AND tr.averageRating >= 7.5
AND tb1.tconst NOT IN ('tt0095765', 'tt0405422', 'tt0102510')
AND tb1.tconst != 'tt0095765'
ORDER BY tr.numVotes DESC
LIMIT 5