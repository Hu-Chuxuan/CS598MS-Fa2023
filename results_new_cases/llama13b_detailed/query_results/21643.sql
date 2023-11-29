SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Mystery%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Black Mass (2015)%'
AND nb.knownForTitles LIKE '%The Tourist (2010)%'
ORDER BY tr.averageRating DESC