SELECT primaryTitle, startYear, averageRating, genres
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.titleType = 'movie'
AND (title_basics.originalTitle = 'Click' AND title_basics.startYear = 2006)
   OR (title_basics.originalTitle = 'The Love Bug' AND title_basics.startYear = 1968)
   OR title_basics.genres LIKE '%Comedy%' 
GROUP BY title_basics.tconst
ORDER BY averageRating DESC
LIMIT 10