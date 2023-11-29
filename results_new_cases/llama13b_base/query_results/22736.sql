SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.genres, 
title_ratings.averageRating, 
title_crew.directors, 
title_principals.characters
FROM title_basics
INNER JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
INNER JOIN title_crew ON title_basics.tconst = title_crew.tconst
INNER JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Ghost Story'
AND title_ratings.numVotes > 1000
AND title_crew.directors LIKE '%Andy Serkis%'
AND title_principals.characters LIKE '%ghost%'
AND title_basics.startYear > 2010
ORDER BY title_ratings.averageRating DESC