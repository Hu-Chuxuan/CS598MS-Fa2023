SELECT * 
FROM title_basics t 
JOIN name_basics n ON t.primaryTitle = n.primaryName 
JOIN title_crew c ON t.tconst = c.tconst 
JOIN title_principals p ON t.tconst = p.tconst 
JOIN title_ratings r ON t.tconst = r.tconst 
WHERE t.primaryTitle LIKE '%The Matrix%' 
AND n.knownForTitles LIKE '%The Matrix%' 
AND c.directors LIKE '%The Wachowskis%' 
AND p.category = 'director' 
AND p.job LIKE '%director%' 
AND r.averageRating > 7.5 
ORDER BY r.averageRating DESC