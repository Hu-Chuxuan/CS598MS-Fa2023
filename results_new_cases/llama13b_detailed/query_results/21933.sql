SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0 AND tb.startYear = 1994 AND tb.endYear = 1994
AND nb.primaryProfession LIKE '%actor%' AND nb.knownForTitles LIKE '%True Lies (1994)%'
AND tr.averageRating > 7 AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC