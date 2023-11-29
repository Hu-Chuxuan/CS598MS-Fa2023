SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Animation%' 
AND (primaryTitle LIKE '%Disney%' OR primaryTitle LIKE '%Pixar%') 
AND startYear >= 1980 
AND startYear <= 2022 
AND primaryTitle NOT IN ('Hidden Figures (2016)', 'Terms of Endearment (1983)', 'Beaches  (1988)')
ORDER BY averageRating DESC
LIMIT 5