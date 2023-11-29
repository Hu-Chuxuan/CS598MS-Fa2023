SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Comedy%' AND t.genres LIKE '%Fantasy%' AND t.startYear >= 2000 AND t.endYear <= 2020
AND n.primaryProfession LIKE '%Actor%' AND n.knownForTitles LIKE '%The Shape of Water (2017)%'
AND n.knownForTitles LIKE '%The Sixth Sense (1999)%'
ORDER BY t.averageRating DESC, tr.numVotes DESC