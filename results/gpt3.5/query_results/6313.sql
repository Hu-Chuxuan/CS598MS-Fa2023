SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType = 'movie'
AND startYear >= 1985
AND primaryTitle NOT IN ('St. Elmo\'s Fire', 'Back to the Future', 'The Breakfast Club', 'Pretty in Pink')
ORDER BY averageRating DESC
LIMIT 5