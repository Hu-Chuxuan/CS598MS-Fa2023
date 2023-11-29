SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Christmas%' AND (genres LIKE '%Drama%' OR genres LIKE '%Film-Noir%')
AND startYear <= 1947
AND tconst NOT IN ('tt0038650', 'tt0037884')  -- Excluding the user's historical preferences
ORDER BY averageRating DESC
LIMIT 5