SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear > 1980
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('Spirited Away', 'The Brave Little Toaster (1987)', 'Anastasia  (1997)')
ORDER BY averageRating DESC
LIMIT 5