SELECT 
title_basics.titleType, title_basics.primaryTitle, title_basics.genres, 
title_crew.directors, title_crew.writers, 
title_principals.category, title_principals.job, title_principals.characters, 
title_ratings.averageRating, title_ratings.numVotes 
FROM title_basics 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_crew.tconst = title_principals.tconst 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
WHERE title_basics.primaryTitle = 'Crash' AND 
title_basics.startYear = 2004 AND 
title_ratings.averageRating > (
    SELECT 
    AVG(title_ratings.averageRating) 
    FROM title_ratings 
    WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.primaryTitle = 'Seven') 
    AND title_ratings.numVotes > 100
) 
AND title_ratings.numVotes > 100
ORDER BY title_ratings.averageRating DESC