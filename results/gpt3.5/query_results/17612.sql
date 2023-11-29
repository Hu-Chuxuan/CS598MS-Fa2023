SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE (primaryTitle LIKE '%Notting Hill%' OR primaryTitle LIKE '%Julia Roberts%' OR primaryTitle LIKE '%Tom Hanks%')
AND titleType = 'movie'
ORDER BY averageRating DESC
LIMIT 10