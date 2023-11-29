SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE genres LIKE '%Thriller%' 
AND startYear > 1980 
AND primaryTitle NOT IN ('How to Lose a Guy in 10 Days (2003)', 'When Harry Met Sally... (1989)', 'Notting Hill')
ORDER BY averageRating DESC 
LIMIT 10