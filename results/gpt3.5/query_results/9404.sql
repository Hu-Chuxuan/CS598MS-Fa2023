SELECT tb.tconst, tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Action%' 
AND tb.startYear BETWEEN 2000 AND 2010 
AND tb.tconst NOT IN 
    (SELECT tp.tconst 
    FROM title_principals tp 
    JOIN name_basics nb ON tp.nconst = nb.nconst 
    WHERE (nb.primaryProfession LIKE '%director%' OR nb.primaryProfession LIKE '%actor%') 
    AND tp.category = 'director' 
    AND nb.primaryName = 'Death Race') 
ORDER BY tr.averageRating DESC 
LIMIT 5