SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE nb.primaryProfession = 'actor'
AND tb.genres LIKE '%Action%'
AND tb.startYear > 2000
AND tb.endYear < 2020
AND tr.averageRating > 7
AND tr.numVotes > 1000
ORDER BY tr.averageRating DESC, tr.numVotes DESC