SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie'
AND tb.primaryTitle IN ('Girls Trip', 'Pineapple Express', 'Super Troopers')
AND nb.primaryProfession IN ('actor', 'writer', 'director')
AND tr.averageRating > 6
AND tr.numVotes > 1000
AND tb.genres LIKE '%Comedy%'
AND tb.genres LIKE '%Adventure%'
AND tb.runtimeMinutes BETWEEN 1 AND 2.5
ORDER BY tr.averageRating DESC