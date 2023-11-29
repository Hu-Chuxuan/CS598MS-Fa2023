SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Horror%'
AND n.primaryProfession LIKE '%Actor%'
AND n.knownForTitles LIKE '%It (1990)%'
AND n.knownForTitles LIKE '%Scary Movie (2000)%'
AND n.knownForTitles LIKE '%Get Out (2017)%'
ORDER BY averageRating DESC, numVotes DESC