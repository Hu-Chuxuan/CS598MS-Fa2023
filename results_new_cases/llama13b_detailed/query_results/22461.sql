SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.genres LIKE '%Comedy%' AND tb.genres LIKE '%Romance%'
AND nb.primaryProfession LIKE '%Actor%' AND nb.knownForTitles LIKE '%Knocked Up (2007)%'
AND tr.averageRating > 6 AND tr.numVotes > 100
ORDER BY tr.averageRating DESC, tr.numVotes DESC