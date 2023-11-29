SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.runtimeMinutes, tb.genres, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE (genres LIKE '%Comedy%' OR genres LIKE '%Action%')
AND tb.tconst NOT IN ('tt5463162', 'tt1431045')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10