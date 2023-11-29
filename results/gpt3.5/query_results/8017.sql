SELECT tb.primaryTitle AS recommended_movie, tr.averageRating AS rating, tr.numVotes AS num_votes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2016
AND tb.primaryTitle NOT IN ('Leap Year  (2010)', '50 First Dates (2004)', 'Home Sweet Home  (2016)')
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC
LIMIT 5