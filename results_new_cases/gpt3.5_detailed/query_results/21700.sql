SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 2000
AND genres LIKE '%Comedy%'
AND tconst NOT IN ('tt0120591', 'tt0117333', 'tt0120082', 'tt1465487', 'tt0187859', 'tt0138000', 'tt7752126', 'tt0432291')
ORDER BY averageRating DESC
LIMIT 5