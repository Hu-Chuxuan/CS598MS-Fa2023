SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND t.genres LIKE '%Romance%' AND t.isAdult = 0
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%Steel Magnolias (1989)%' AND n.knownForTitles LIKE '%9 to 5 (1980)%'
ORDER BY tr.averageRating DESC, t.startYear DESC