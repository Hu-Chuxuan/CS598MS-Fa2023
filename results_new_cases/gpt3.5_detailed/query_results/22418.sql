SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Superhero%'
AND primaryTitle NOT IN ('The Boy  (2016)', 'It  (2017)', 'Mama  (2013)')
ORDER BY averageRating DESC
LIMIT 10