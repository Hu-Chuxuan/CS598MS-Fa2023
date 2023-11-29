SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Action%' 
AND tb.genres LIKE '%War%'
AND tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.tconst NOT IN ('tt0120815', 'tt0093058')