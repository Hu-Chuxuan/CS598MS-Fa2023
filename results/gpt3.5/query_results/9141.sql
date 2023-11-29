SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres NOT LIKE '%Sci-Fi%'
AND averageRating >= 7.5
AND (primaryTitle != 'Blade Runner (1982)' OR primaryTitle != 'The Fifth Element')
ORDER BY averageRating DESC
LIMIT 10