SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.genres LIKE '%Mystery%'
AND tb.titleType = 'movie'
AND tb.startYear <= '2004'
AND tr.numVotes > 1000
AND tb.primaryTitle NOT IN ('Saw (2004)')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5