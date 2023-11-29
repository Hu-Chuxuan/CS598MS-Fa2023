SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Crime%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Secret Life of Walter Mitty%'
AND nb.knownForTitles LIKE '%The Dark Knight%'
AND nb.knownForTitles LIKE '%Into the Wild%'
ORDER BY tr.averageRating DESC, nb.primaryName ASC
LIMIT 5