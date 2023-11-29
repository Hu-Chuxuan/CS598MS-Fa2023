SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE primaryTitle = 'Daddy''s Home 2' AND startYear = 2017 
   OR primaryTitle = 'Central Intelligence' AND startYear = 2016 
   OR primaryTitle = 'Jumanji' AND startYear = 2017 
ORDER BY averageRating DESC