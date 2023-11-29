SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%American Pie  (1999)%'
AND nb.knownForTitles LIKE '%Scary Movie (2000)%'
ORDER BY tr.averageRating DESC