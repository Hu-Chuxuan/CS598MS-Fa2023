SELECT tb.primaryTitle, tr.averageRating, tb.startYear
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear <= 1996
AND tr.averageRating < 4.5
AND tb.genres NOT LIKE '%Comedy%'
AND tb.genres NOT LIKE '%Musical%'
AND tb.genres NOT LIKE '%Romance%'
AND tb.genres NOT LIKE '%Family'
AND tb.tconst NOT IN ('tt0117128', 'tt0080339') 
ORDER BY tr.numVotes DESC
LIMIT 5