SELECT primaryTitle, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear > 1985
AND genres LIKE '%Adventure%'
AND tconst NOT IN ('tt0455967', 'tt0089218')  -- Exclude the titles from user's preference history
ORDER BY averageRating DESC
LIMIT 3