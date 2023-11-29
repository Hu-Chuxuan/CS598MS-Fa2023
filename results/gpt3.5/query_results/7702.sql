SELECT primaryTitle, startYear, runtimeMinutes, genres, averageRating 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.tconst NOT IN ('tt7321118', 'tt5052448', 'tt2575988') 
AND title_basics.genres LIKE '%Horror%' 
ORDER BY numVotes DESC 
LIMIT 5