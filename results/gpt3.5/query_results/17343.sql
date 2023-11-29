SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear = 2018
AND tb.genres LIKE '%Action%' OR tb.genres LIKE '%Adventure%'
AND tb.tconst NOT IN ('tt10205172', 'tt1825683', 'tt2992146')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5