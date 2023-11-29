SELECT * FROM title_basics t
JOIN name_basics n ON t.primaryTitle = n.primaryName
JOIN title_ratings tr ON t.tconst = tr.tconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Action%' AND t.startYear > 2000
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%Heroes%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC, t.startYear DESC