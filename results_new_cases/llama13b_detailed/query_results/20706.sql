SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' AND n.primaryProfession LIKE '%Actor%'
AND tr.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE titleType ='movie' AND genres LIKE '%Comedy%')
AND tr.numVotes > (SELECT COUNT(*) FROM title_ratings WHERE titleType ='movie' AND genres LIKE '%Comedy%')
ORDER BY tr.averageRating DESC, tr.numVotes DESC