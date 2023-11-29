SELECT tb.primaryTitle AS recommended_movie, tb.startYear AS release_year, tr.averageRating AS rating, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= YEAR(CURDATE())
AND tr.numVotes >= 1000
ORDER BY tr.averageRating DESC
LIMIT 5