SELECT primaryTitle, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Horror%'
AND originalTitle NOT LIKE '%subtitles%'
AND originalTitle NOT LIKE '%foreign%'
AND originalTitle NOT LIKE '%dubbed%'
AND primaryTitle NOT LIKE '%subtitles%'
AND primaryTitle NOT LIKE '%foreign%'
AND primaryTitle NOT LIKE '%dubbed%'
AND averageRating >= 7
AND primaryTitle != 'Batman Begins'
ORDER BY averageRating DESC
LIMIT 5