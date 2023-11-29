SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.genres LIKE '%Comedy%'
AND title_basics.tconst NOT IN ('tt0844479', 'tt1306980', 'tt1951266', 'tt0085794')  -- excluding previous user preferences
ORDER BY averageRating DESC
LIMIT 5