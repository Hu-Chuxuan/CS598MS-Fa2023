SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Meg Ryan'
AND tb.titleType = 'movie'
AND tb.startYear >= 1980
AND tb.startYear <= 2010
AND tb.tconst NOT IN ('tt0108160', 'tt1216496', 'tt0098635', 'tt0128853')
ORDER BY tr.averageRating DESC
LIMIT 10