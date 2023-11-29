SELECT tb.primaryTitle, tb.startYear, tr.averageRating 
FROM title_basics tb 
JOIN title_ratings tr ON tb.tconst = tr.tconst 
WHERE tb.genres LIKE '%Comedy%' 
AND tb.startYear >= 1982 
AND tb.startYear <= 1989 
AND tb.primaryTitle NOT IN ('Blade Runner (1982)', 'Cocoon  (1985)', 'The Abyss (1989)') 
ORDER BY tr.averageRating DESC 
LIMIT 5