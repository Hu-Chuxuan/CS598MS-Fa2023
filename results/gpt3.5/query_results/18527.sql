SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear < 1965
AND genres LIKE '%Musical%'
AND tconst NOT IN ('tt0049408', 'tt0054698', 'tt0087277', 'tt0077631')
ORDER BY averageRating DESC
LIMIT 5