SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1980
AND genres LIKE '%Horror%' OR genres LIKE '%Thriller%'
AND averageRating >= 7.5
AND tconst NOT IN ('tt0081505', 'tt0087332', 'tt0054215')
ORDER BY averageRating DESC
LIMIT 5