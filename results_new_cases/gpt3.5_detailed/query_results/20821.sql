SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Family%' AND titleType = 'movie'
ORDER BY averageRating DESC
LIMIT 10