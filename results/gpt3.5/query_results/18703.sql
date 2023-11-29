SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%' 
AND tb.genres LIKE '%Romance%'
AND tb.startYear >= 2000
AND tb.tconst NOT IN ('tt0829482', 'tt1431045')