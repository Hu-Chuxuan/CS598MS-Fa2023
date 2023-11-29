SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear >= 2004
AND tb.startYear <= 2009
AND tr.numVotes > 1000
AND tb.tconst NOT IN ('tt0377092')  -- Exclude "Mean Girls (2004)"
ORDER BY tr.averageRating DESC
LIMIT 5