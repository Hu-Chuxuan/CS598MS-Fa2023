SELECT tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics AS tb
JOIN title_ratings AS tr ON tb.tconst = tr.tconst
JOIN title_principals AS tp ON tb.tconst = tp.tconst
JOIN name_basics AS nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Adam Sandler'
AND tb.genres LIKE '%Comedy%'
AND tb.startYear > 2000
AND tr.numVotes > 1000
AND tb.primaryTitle != 'I Now Pronounce You Chuck & Larry'
ORDER BY tr.averageRating DESC
LIMIT 5