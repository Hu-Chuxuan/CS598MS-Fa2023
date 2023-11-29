SELECT * FROM title_basics tb
INNER JOIN title_ratings tr ON tb.tconst = tr.tconst
INNER JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0 AND tb.startYear <= '2022' AND tb.endYear >= '2000'
AND nb.primaryProfession = 'actor' AND nb.knownForTitles = 'tt0053137,tt00319'
AND tr.averageRating > 7 AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC