SELECT primaryTitle, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.genres LIKE '%Thriller%' 
AND title_basics.startYear >= 2010 
AND title_basics.tconst NOT IN ('tt2184339', 'tt2184333', 'tt2975578') 
ORDER BY averageRating DESC
LIMIT 10