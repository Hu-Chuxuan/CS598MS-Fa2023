SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' AND tb.genres LIKE '%Superhero%' AND nb.primaryProfession LIKE '%Actor%'
AND NOT EXISTS (SELECT 1 FROM title_principals tp WHERE tp.nconst = nb.nconst AND tp.category = 'Actor')
ORDER BY averageRating DESC, numVotes DESC