SELECT tb.primaryTitle, tr.averageRating
FROM title_basics tb
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
JOIN title_ratings tr ON tb.tconst = tr.tconst
WHERE nb.primaryName = 'Sandra Bullock'
AND tb.titleType = 'movie'
AND tr.numVotes > 1000
AND tb.startYear >= 1990
AND tb.primaryTitle NOT IN ('The Matrix', 'Total Recall')
ORDER BY tr.averageRating DESC
LIMIT 5