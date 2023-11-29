SELECT 
title_basics.title, title_basics.primaryTitle, name_basics.primaryName,
title_ratings.averageRating, title_ratings.numVotes,
title_crew.directors, title_crew.writers,
title_principals.category, title_principals.job, title_principals.characters

FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.isAdult = 0  -- filter out adult movies
AND title_ratings.numVotes > 1000  -- filter out movies with less than 1000 ratings
AND title_ratings.averageRating > 7  -- filter out movies with average rating less than 7
AND name_basics.primaryProfession = 'Actor'  -- filter out movies with primary profession other than Actor
AND title_principals.category = 'Family'  -- filter out movies with category other than Family

GROUP BY title_basics.title, title_basics.primaryTitle, name_basics.primaryName

HAVING COUNT(DISTINCT title_principals.job) > 2  -- filter out movies with less than 3 main actors

ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC