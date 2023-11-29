SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, 
       AVG(rating) AS avgRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE titleType ='movie' AND isAdult = 0
GROUP BY tconst
HAVING avgRating > 5 AND runtimeMinutes > 90
ORDER BY avgRating DESC