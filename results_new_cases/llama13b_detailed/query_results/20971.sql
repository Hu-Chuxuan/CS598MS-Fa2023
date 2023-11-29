SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND nb.knownForTitles LIKE '%The Texas Chain Saw Massacre (1974)%'
AND tr.averageRating > 6
AND tr.numVotes > 100
ORDER BY tr.averageRating DESC, tr.numVotes DESC