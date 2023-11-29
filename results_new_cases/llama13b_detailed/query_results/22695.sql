SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Action%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%Die Hard%'
AND nb.knownForTitles LIKE '%Deadpool%'
AND nb.knownForTitles LIKE '%Avengers%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC