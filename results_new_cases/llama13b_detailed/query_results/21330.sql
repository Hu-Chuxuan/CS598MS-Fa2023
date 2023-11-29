SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.startYear = 2003
AND tb.genres LIKE '%Action%'
AND tb.genres LIKE '%Adventure%'
AND tb.genres LIKE '%Fantasy%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Lord of the Rings:%
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC