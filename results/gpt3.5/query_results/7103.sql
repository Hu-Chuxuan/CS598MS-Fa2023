SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle != 'Pretty in Pink' 
AND startYear = 1986 
AND titleType = 'movie' 
AND averageRating > 6 
AND tconst NOT IN ('tt0088847', 'tt0118627')
ORDER BY averageRating DESC