SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Adventure%'
AND tb.startYear >= 1980
AND tb.startYear <= 1990
AND tr.averageRating >= 7
AND tb.primaryTitle NOT IN ('The Amityville Horror  (1979)')
ORDER BY tr.numVotes DESC
LIMIT 1