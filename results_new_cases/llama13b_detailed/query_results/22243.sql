SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Drama%'
AND t.startYear BETWEEN 1990 AND 2018
AND t.runtimeMinutes > 90
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%Forrest Gump%' OR n.knownForTitles LIKE '%Saving Private Ryan%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC