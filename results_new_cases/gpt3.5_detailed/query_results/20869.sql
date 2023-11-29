SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN title_crew tc ON tb.tconst = tc.tconst
JOIN title_principals tp ON tb.tconst = tp.tconst
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE tb.titleType = 'movie'
AND tb.genres LIKE '%Action%'
AND tb.tconst <> 'tt0478970' -- Exclude Ant-Man (2015)
AND nb.primaryName = 'Peyton Reed' -- Director of Ant-Man (2015)
AND tb.startYear > 2010
AND tb.averageRating > 7
AND tb.tconst NOT IN ('tt1431045', 'tt3469046') -- Exclude Deadpool (2016)
GROUP BY tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating
ORDER BY tr.averageRating DESC
LIMIT 5