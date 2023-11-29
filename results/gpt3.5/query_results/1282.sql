SELECT tconst, primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Drama%'
AND startYear >= 2000
AND tconst NOT IN ('tt0162222', 'tt0257044')  -- Excluding Cast Away and Road to Perdition
ORDER BY averageRating DESC
LIMIT 10