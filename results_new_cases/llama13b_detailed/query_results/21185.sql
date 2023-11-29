SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Stoner%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Pineapple Express%'
AND nb.knownForTitles LIKE '%How High%'
AND tr.averageRating > 6
ORDER BY tr.averageRating DESC