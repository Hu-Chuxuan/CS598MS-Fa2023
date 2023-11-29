SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('A Fish Called Wanda (1988)', 'Trading Places (1983)')
ORDER BY averageRating DESC
LIMIT 10