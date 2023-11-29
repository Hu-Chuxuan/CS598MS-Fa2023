SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Dick Van Dyke'
AND tb.titleType = 'movie'
AND tb.startYear < 1964
AND tr.numVotes > 1000
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Musical%'
AND tb.tconst NOT IN ('tt2277860')
ORDER BY tr.averageRating DESC
LIMIT 5