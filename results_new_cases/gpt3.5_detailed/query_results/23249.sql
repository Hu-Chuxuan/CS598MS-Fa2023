SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Drama%'
AND tb.genres NOT LIKE '%Horror%'
AND tb.tconst NOT IN ('tt0088748', 'tt0298148') 
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10