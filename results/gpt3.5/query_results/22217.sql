SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%Indiana Jones%'
AND startYear < 2008
AND genres LIKE '%Adventure%'
AND tconst NOT IN ('tt0097576', 'tt0097576', 'tt0080684')
ORDER BY averageRating DESC
LIMIT 5