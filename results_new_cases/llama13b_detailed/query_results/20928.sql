SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Musicals%' AND tb.genres LIKE '%comedy%' AND tb.genres LIKE '%action%'
AND nb.primaryProfession LIKE '%actor%'
AND tr.averageRating > 7
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC