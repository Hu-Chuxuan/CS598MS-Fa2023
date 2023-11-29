SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE primaryTitle LIKE '%The Woman Who Wasn''t There%'
AND genres LIKE '%Drama%'
AND startYear >= 2000
AND averageRating > 7
AND tconst NOT IN ('tt0147138')  -- excluding 'Talhotblond (2009)'
ORDER BY averageRating DESC
LIMIT 5