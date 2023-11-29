SELECT primaryTitle, startYear, averageRating
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
WHERE title_basics.tconst IN ('tt0112573', 'tt0327247', 'tt0120667', 'tt0332452', 'tt0180093') 
AND title_basics.titleType = 'movie'
AND startYear >= 1990
AND averageRating > 7
ORDER BY averageRating DESC