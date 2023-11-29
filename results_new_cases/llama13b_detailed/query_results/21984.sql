SELECT * FROM title_basics tb
JOIN title_ratings tr ON tb.tconst = tr.tconst
JOIN name_basics nb ON tr.nconst = nb.nconst
WHERE tb.titleType ='movie' AND tb.startYear BETWEEN 1960 AND 1970
AND tb.genres LIKE '%Horror%'
AND nb.primaryProfession LIKE '%Actor%'
AND tr.averageRating > 7
ORDER BY tr.averageRating DESC, tb.primaryTitle ASC