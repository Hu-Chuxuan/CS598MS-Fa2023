SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear = 1996
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Man on Wire (2008)%'
ORDER BY tr.averageRating DESC