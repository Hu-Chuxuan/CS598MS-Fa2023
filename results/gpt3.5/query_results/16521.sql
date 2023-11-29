SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName LIKE '%Gerard Butler%'
AND tb.titleType = 'movie'
AND tr.averageRating >= 6
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2010
AND tb.tconst NOT IN ('tt5360952', 'tt0319262', 'tt2798920')
GROUP BY tb.primaryTitle, tb.startYear, tr.averageRating
ORDER BY tr.numVotes DESC
LIMIT 5