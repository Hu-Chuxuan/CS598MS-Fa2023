SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.titleType = 'movie' 
AND startYear <= 1980
AND genres LIKE '%Horror%'
AND primaryTitle != 'Friday the 13th' 
AND primaryTitle != 'The Exorcist'
ORDER BY averageRating DESC