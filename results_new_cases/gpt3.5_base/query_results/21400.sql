SELECT tb.primaryTitle, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tp.tconst = tb.tconst 
JOIN name_basics nb ON nb.nconst = tp.nconst 
WHERE nb.primaryName = 'her' 
AND tb.primaryTitle != 'Pineapple Express ' 
AND tb.titleType = 'movie' 
ORDER BY tr.averageRating DESC