SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Animation%'
AND primaryTitle NOT IN ('The Secret Life of Pets (2016)', 'Toy Story (1995)', 'Finding Nemo (2003)')
AND startYear < 2016
ORDER BY averageRating DESC
LIMIT 5