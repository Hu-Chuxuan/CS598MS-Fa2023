SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Ben Stiller'
AND tb.startYear = 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0119114', 'tt0330793', 'tt0780504') -- Excluding previously watched movies
ORDER BY tr.averageRating DESC
LIMIT 5