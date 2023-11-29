SELECT 
title_basics.primaryTitle, 
title_basics.startYear, 
title_basics.runtimeMinutes, 
title_ratings.averageRating, 
name_basics.primaryName, 
title_crew.directors, 
title_principals.characters

FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.genres LIKE '%Horror%' AND title_basics.genres LIKE '%Romantic Comedy%' AND title_basics.genres LIKE '%Thriller%'
AND title_ratings.numVotes > 10000
AND name_basics.primaryName NOT IN (SELECT primaryName FROM name_basics WHERE birthYear < 1980) -- exclude directors who are too young

GROUP BY title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, title_ratings.averageRating, name_basics.primaryName, title_crew.directors, title_principals.characters

HAVING AVG(title_ratings.averageRating) > 7.5 AND COUNT(DISTINCT title_principals.characters) > 4 -- filter out movies with low average rating and few characters

ORDER BY AVG(title_ratings.averageRating) DESC, COUNT(DISTINCT title_principals.characters) DESC