SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND (primaryTitle LIKE '%It (2017)%' OR primaryTitle LIKE '%A Nightmare on Elm Street (1984)%')
AND startYear > 1984
ORDER BY averageRating DESC
LIMIT 5