SELECT * FROM title_basics t
JOIN title_ratings tr ON t.tconst = tr.tconst
JOIN name_basics n ON t.primaryName = n.primaryName
WHERE t.titleType ='movie' AND t.genres LIKE '%Comedy%' OR t.genres LIKE '%Action%'
AND tr.averageRating > (SELECT AVG(tr2.averageRating) FROM title_ratings tr2 WHERE tr2.tconst IN (SELECT tconst FROM title_basics WHERE primaryName = 'Ryan Reynolds'))
AND n.primaryProfession LIKE '%Actor%'
ORDER BY tr.averageRating DESC