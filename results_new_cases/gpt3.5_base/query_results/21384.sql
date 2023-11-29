SELECT primaryTitle, startYear, averageRating
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND title_basics.startYear <= 2018
AND title_basics.genres LIKE '%Action%'
AND title_basics.tconst NOT IN ('tt3896198')  -- Exclude Deadpool 2
AND title_basics.tconst NOT IN ('tt0167404', 'tt0364569')  -- Exclude user's historical preferences
ORDER BY averageRating DESC
LIMIT 1