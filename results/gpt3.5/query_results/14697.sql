SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 2015
AND tb.genres LIKE '%Comedy%'
AND tr.averageRating > 6
AND tb.primaryTitle NOT IN ('Spy (2015)', '21 Jump Street (2012)', 'The Other Guys (2010)', 'It Follows (2014)')
ORDER BY tr.numVotes DESC
LIMIT 5