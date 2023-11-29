SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0
AND tb.genres LIKE '%Animation%'
AND nb.primaryProfession LIKE '%actor%'
AND nb.knownForTitles LIKE '%The Lord of the Rings%'
AND nb.knownForTitles LIKE '%Thor%'
ORDER BY tr.averageRating DESC