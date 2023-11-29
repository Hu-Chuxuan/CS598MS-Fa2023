SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE (primaryTitle = 'La La Land' AND startYear = 2016) 
    OR (primaryTitle = 'Arrival' AND startYear = 2016) 
ORDER BY averageRating DESC