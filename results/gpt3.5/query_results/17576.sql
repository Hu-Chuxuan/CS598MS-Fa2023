SELECT primaryTitle, startYear, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE titleType = 'movie' 
AND startYear <= 1987 
AND startYear >= 1987-5 
AND genres LIKE '%Action%' 
AND genres LIKE '%Sci-Fi%' 
AND tconst NOT IN ('tt1219827', 'tt1392190', 'tt2015381', 'tt0083658', 'tt0084827') 
ORDER BY averageRating DESC 
LIMIT 5