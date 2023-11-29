SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Musical%'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt3411444', 'tt5463162')
AND tr.averageRating > 7
ORDER BY tr.numVotes DESC
LIMIT 5