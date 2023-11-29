SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.titleType = 'movie' 
AND (title_basics.originalTitle = 'Meet the Fockers' OR title_basics.primaryTitle = 'Meet the Fockers')
AND startYear < 2004 
AND averageRating > (SELECT averageRating 
                    FROM title_basics 
                    JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
                    WHERE title_basics.originalTitle = 'Meet the Fockers' 
                    OR title_basics.primaryTitle = 'Meet the Fockers')
ORDER BY averageRating DESC