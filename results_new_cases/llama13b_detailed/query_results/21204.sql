SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Action%' AND tb.genres LIKE '%Adventure%' AND tb.genres LIKE '%Fantasy%'
AND nb.primaryProfession LIKE '%Actor%' AND nb.knownForTitles LIKE '%Black Panther (2018)%' AND nb.knownForTitles LIKE '%Guardians of the Galaxy (2014)%'
AND nb.knownForTitles LIKE '%Guardians of the Galaxy Vol. 2 (2017)%' AND nb.knownForTitles LIKE '%The Avengers (2012)%'
AND tr.averageRating > 7 AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC