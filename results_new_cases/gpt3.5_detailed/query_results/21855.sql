SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2007
AND (tb.primaryTitle NOT IN ('Hot Tub Time Machine', 'Office Space (1999)', 'Superbad  (2007)', 'The 40-Year-Old Virgin (2005)', 'Dumb and Dumber (1994)'))
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5