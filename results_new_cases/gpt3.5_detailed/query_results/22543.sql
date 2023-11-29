SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Will Ferrell' 
AND tb.titleType = 'movie' 
AND tb.startYear >= 2000
AND tb.genres LIKE '%Comedy%'
AND tb.tconst NOT IN ('tt0113497', 'tt2277860')
ORDER BY tr.averageRating DESC, tb.startYear DESC
LIMIT 10