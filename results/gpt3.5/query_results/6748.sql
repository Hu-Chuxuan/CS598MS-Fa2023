SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.tconst IN ('tt0936501', 'tt1397280', 'tt1397281') AND title_basics.titleType = 'movie'
ORDER BY averageRating DESC