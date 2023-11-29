SELECT tb.primaryTitle, tb.startYear, tb.genres
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Horror%'
AND tb.startYear > 2000
AND tr.averageRating > 6.5
AND tb.tconst NOT IN ('tt0263488', 'tt3564472')
ORDER BY tr.numVotes DESC
LIMIT 5