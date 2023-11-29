SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Comedy%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 6
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC