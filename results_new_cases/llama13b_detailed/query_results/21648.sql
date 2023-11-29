SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie'
AND t.genres LIKE '%Drama%'
AND t.startYear = 2012
AND t.runtimeMinutes > 120
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%The Place Beyond the Pines%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC