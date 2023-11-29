SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE tb.startYear <= 1988
AND tb.genres LIKE '%Action%'
AND tb.tconst NOT IN ('tt0096256', 'tt0104155', 'tt0106856', 'tt0107206', 'tt0060666')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5