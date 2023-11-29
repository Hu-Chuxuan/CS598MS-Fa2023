SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Romance%' AND genres LIKE '%Comedy%'
AND startYear > 1990
AND primaryTitle NOT IN ('Love Stinks  (1999)', 'Forgetting Sarah Marshall (2008)', 'When Harry Met Sally... (1989)', 'Pretty Woman (1990)')
ORDER BY averageRating DESC
LIMIT 5