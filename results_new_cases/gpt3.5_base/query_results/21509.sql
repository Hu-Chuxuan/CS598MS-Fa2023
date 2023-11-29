SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Disney%' 
AND primaryTitle NOT IN ('Hidden Figures (2016)', 'Terms of Endearment (1983)', 'Beaches  (1988)')
ORDER BY averageRating DESC
LIMIT 5