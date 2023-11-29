SELECT tb.primaryTitle AS recommended_movie
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear >= 2016
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt1386697', 'tt1013752')  