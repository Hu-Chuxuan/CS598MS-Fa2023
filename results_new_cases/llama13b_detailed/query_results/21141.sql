SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Pain & Gain (2013)%'
AND nb.knownForTitles LIKE '%Faster  (2010)%'
AND nb.knownForTitles LIKE '%Deepwater Horizon  (2016)%'
AND nb.knownForTitles LIKE '%Deadpool  (2016)%'
ORDER BY tr.averageRating DESC