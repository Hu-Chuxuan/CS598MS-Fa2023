SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE nb.primaryName = 'Brad Pitt' 
AND tb.titleType = 'movie' 
AND tb.startYear <= 2022 
AND tb.tconst NOT IN ('tt0137523', 'tt0101258') 
ORDER BY tr.averageRating DESC 
LIMIT 5