SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.titleType = 'movie'
AND tb.startYear > 2013
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt2398249', 'tt0115669', 'tt2675914', 'tt0116225', 'tt2024544', 'tt0451607')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5