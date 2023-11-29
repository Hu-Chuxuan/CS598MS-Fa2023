SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 2000
AND tb.averageRating >= 7.0
AND tb.primaryTitle NOT IN ('Crazy, Stupid, Love (2011)', 'They Live (1988)', 'Super Troopers (2001)')
ORDER BY tr.numVotes DESC
LIMIT 5