SELECT tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Morgan Freeman'
AND tb.titleType = 'movie'
AND tb.startYear >= 1990
AND tb.genres LIKE '%Mystery%'
AND tb.tconst NOT IN ('tt0119468', 'tt0120694', 'tt0285823', 'tt0266465', 'tt0221027')
GROUP BY tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10