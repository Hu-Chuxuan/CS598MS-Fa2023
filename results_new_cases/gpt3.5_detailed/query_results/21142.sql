SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Action%'
AND titleType = 'movie'
AND startYear > 2010
AND averageRating > 7
AND primaryTitle NOT IN ('Hitch  (2005)', '27 Dresses (2008)', 'Maid in Manhattan')
ORDER BY averageRating DESC
LIMIT 5