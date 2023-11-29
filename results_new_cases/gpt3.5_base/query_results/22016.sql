SELECT tb.primaryTitle, tb.startYear, tb.genres, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
JOIN title_principals tp ON tb.tconst = tp.tconst 
JOIN name_basics nb ON tp.nconst = nb.nconst 
WHERE tb.genres LIKE '%Adventure%' 
AND tb.startYear < 1985 
AND tr.averageRating > 7 
AND nb.primaryName <> 'Steven Spielberg' 
AND tb.tconst NOT IN ('tt0316208', 'tt0123755') 
GROUP BY tb.primaryTitle 
ORDER BY tr.averageRating DESC 
LIMIT 5