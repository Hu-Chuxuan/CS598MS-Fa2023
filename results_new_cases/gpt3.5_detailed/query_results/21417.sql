SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName LIKE '%Wayans Brothers%'
AND tb.titleType = 'movie'
AND tb.startYear > 1980
ORDER BY tr.averageRating DESC, tr.numVotes DESC
LIMIT 10