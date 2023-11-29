SELECT DISTINCT tb.primaryTitle
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Tom Cruise'
AND tb.titleType = 'movie'
AND tb.primaryTitle NOT IN ('Top Gun', 'Mission: Impossible', 'Jack Reacher')
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 5