SELECT tb.tconst, tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Kevin Hart'
AND tb.titleType = 'movie'
AND tb.startYear >= 2010
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0120812', 'tt6359956', 'tt5721088')
AND tb.tconst NOT IN ('tt0111300', 'tt6359956', 'tt4348012')
AND tb.tconst NOT IN ('tt4896060', 'tt1760946', 'tt4925292')
ORDER BY tr.averageRating DESC
LIMIT 5