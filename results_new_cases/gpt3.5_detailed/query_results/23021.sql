SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Crime%'
AND tb.titleType = 'movie'
AND tb.startYear > 2000
AND tb.numVotes > 1000
AND tb.primaryTitle NOT IN ('The Secret Life of Walter Mitty  (2013)', 'The Dark Knight  (2008)', 'Into the Wild  (2007)')
ORDER BY tr.averageRating DESC, tb.numVotes DESC
LIMIT 5