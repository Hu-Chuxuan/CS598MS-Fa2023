SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE genres LIKE '%Comedy%' 
AND startYear <= 1989
AND primaryTitle NOT IN ('Foul Play', "National Lampoon's Vacation", "National Lampoon's Christmas Vacation")
ORDER BY averageRating DESC
LIMIT 5