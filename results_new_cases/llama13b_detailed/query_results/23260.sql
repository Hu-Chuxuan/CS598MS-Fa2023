SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.genres LIKE '%Animation%'
AND tb.startYear BETWEEN 1990 AND 2018
AND tb.endYear IS NULL
AND tr.averageRating > 7
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%Finding Nemo%'
AND nb.knownForTitles LIKE '%Frozen%'
AND nb.knownForTitles LIKE '%Coco%'
AND nb.knownForTitles LIKE '%Moana%'
ORDER BY tr.averageRating DESC