SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.tconst IN ('tt0114369', 'tt4062536', 'tt1179933')
AND title_basics.titleType = 'movie'
AND title_basics.startYear >= 1990
AND title_basics.startYear <= 2020
ORDER BY averageRating DESC