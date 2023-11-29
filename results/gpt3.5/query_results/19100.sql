SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Drama%'
AND tb.primaryTitle NOT IN ('The King\'s Speech (2010)', 'The Departed (2006)', 'Captain Phillips  (2013)')
AND tr.averageRating > 7
ORDER BY tr.numVotes DESC
LIMIT 5