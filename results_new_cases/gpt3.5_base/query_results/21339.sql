SELECT tb.primaryTitle 
FROM title_basics tb 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst
WHERE nb.primaryName = 'Sandra Bullock' 
AND tb.titleType = 'movie' 
AND tb.averageRating > 7.5 
AND tb.startYear > 1990 
AND tb.genres LIKE '%Drama%' 
AND tb.primaryTitle NOT IN ('The Matrix (1999)', 'Total Recall  (1990)')
ORDER BY tb.averageRating DESC, tb.startYear ASC
LIMIT 5