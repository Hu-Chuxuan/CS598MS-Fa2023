SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND startYear IN ('2017', '2015', '2012')
AND primaryTitle NOT IN ('A Bad Moms Christmas', 'Pitch Perfect 3')
AND primaryTitle NOT IN ('Pitch Perfect 2', 'Pitch Perfect')
ORDER BY averageRating DESC
LIMIT 5