SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Adventure%' AND t.startYear BETWEEN 1980 AND 1990
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%Indiana Jones%'
ORDER BY averageRating DESC, numVotes DESC