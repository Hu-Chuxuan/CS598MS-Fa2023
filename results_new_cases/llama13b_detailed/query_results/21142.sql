SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.genres LIKE '%Action%' AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle LIKE '%Faster%' AND endYear = '2010'))
AND NOT EXISTS (SELECT 1 FROM title_principals tp WHERE tp.tconst = tb.tconst AND tp.category = 'actor')
ORDER BY tr.averageRating DESC