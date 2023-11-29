SELECT primaryTitle, averageRating, genres
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie' 
AND startYear <= 1968 
AND genres LIKE '%Sci-Fi%'
AND tconst <> 'tt0062622'
ORDER BY averageRating DESC
LIMIT 5