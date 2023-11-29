SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON tr.nconst = n.nconst
WHERE t.genres LIKE '%Horror%' AND n.primaryProfession LIKE '%Actor%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE genres LIKE '%Horror%'))
ORDER BY tr.averageRating DESC