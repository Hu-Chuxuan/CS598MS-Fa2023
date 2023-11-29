SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%War%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Jurassic Park%'
AND nb.knownForTitles LIKE '%A.I. Artificial Intelligence%'
ORDER BY tr.averageRating DESC