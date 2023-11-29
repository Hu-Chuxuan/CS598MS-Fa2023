SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%'
AND startYear BETWEEN 1990 AND 2010
AND primaryTitle NOT IN ('Superbad', 'Ace Ventura: Pet Detective', 'John Wick: Chapter 2')
ORDER BY averageRating DESC
LIMIT 5