SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND genres LIKE '%Comedy%'
AND genres NOT LIKE '%Drama%'
AND startYear > 1993
AND startYear < 2023
AND averageRating > 6.5
AND tconst NOT IN ('tt0104952', 'tt0088847', 'tt0104952', 'tt0104952', 'tt0104952', 'tt0104952', 'tt0104952', 'tt0104952', 'tt0104952', 'tt0104952')
LIMIT 10