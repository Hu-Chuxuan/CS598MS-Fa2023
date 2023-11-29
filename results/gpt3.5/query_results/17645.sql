SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND genres LIKE ANY ('%Drama%', '%Crime%', '%Biography%') 
AND startYear >= 1990 
AND startYear <= 2000 
AND primaryTitle != 'Straight Outta Compton' 
ORDER BY averageRating DESC 
LIMIT 5