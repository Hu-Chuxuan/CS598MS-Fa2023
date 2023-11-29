SELECT tb.tconst, tb.primaryTitle, tr.averageRating, tr.numVotes
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Adam Sandler'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
ORDER BY tr.averageRating DESC
LIMIT 5