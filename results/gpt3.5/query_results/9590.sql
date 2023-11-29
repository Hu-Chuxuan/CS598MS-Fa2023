SELECT primaryTitle, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear > 2010 
AND primaryTitle != 'Bad Moms (2016)' 
AND primaryTitle NOT IN ('Last Holiday  (2006)', 'A Bad Moms Christmas (2017)', 'Girls Trip (2017)')
ORDER BY averageRating DESC
LIMIT 5