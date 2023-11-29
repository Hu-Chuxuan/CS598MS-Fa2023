SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.isAdult = 0 AND tr.averageRating > 7 AND nb.primaryProfession = 'actor'
AND EXISTS (SELECT 1 FROM title_principals tp WHERE tp.nconst = nb.nconst AND tp.category = 'actor')
AND tb.genres LIKE '%Animation%'
ORDER BY tr.averageRating DESC, tb.startYear DESC