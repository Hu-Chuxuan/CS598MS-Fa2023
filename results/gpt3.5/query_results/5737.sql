SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings
ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND (primaryTitle = 'About a Boy' OR primaryTitle = 'Notting Hill')
AND startYear <= 2002
ORDER BY averageRating DESC
LIMIT 5