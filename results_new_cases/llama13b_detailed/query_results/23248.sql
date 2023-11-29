SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%family%' AND t.runtimeMinutes < 120
AND n.primaryProfession LIKE '%actor%' AND n.knownForTitles LIKE '%What About Bob%3F (1991)%'
AND tr.averageRating > 6 AND tr.numVotes > 100
ORDER BY tr.averageRating DESC, t.startYear DESC