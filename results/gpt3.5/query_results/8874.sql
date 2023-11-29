SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear < 2000
AND genres LIKE '%Horror%'
AND title_basics.tconst != 'tt0167404'
ORDER BY averageRating DESC
LIMIT 5