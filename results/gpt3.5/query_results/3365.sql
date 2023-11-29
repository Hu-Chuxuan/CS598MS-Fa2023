SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE startYear >= 2000 
AND genres LIKE '%Adventure%' 
AND genres LIKE '%Sci-Fi%' 
AND runtimeMinutes <= 150 
AND averageRating >= 7 
ORDER BY averageRating DESC