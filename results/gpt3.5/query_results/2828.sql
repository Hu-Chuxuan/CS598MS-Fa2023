SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear <= 2022
AND genres LIKE '%Comedy%'
AND primaryTitle NOT IN ('A Bad Moms Christmas (2017)', 'Elf  (2003)', "Daddy's Home 2 (2017)", 'White Chicks (2004)')
ORDER BY averageRating DESC
LIMIT 5