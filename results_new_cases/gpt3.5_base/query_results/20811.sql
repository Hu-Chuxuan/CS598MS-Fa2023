SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Horror%' AND genres LIKE '%Thriller%'
AND startYear > 1980 AND startYear < 2010
AND runtimeMinutes < 120
AND averageRating > 6.5
AND tconst NOT IN ('tt0095444', 'tt3235888')