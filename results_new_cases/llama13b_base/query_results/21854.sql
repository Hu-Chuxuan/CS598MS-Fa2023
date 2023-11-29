SELECT 
title_basics.title, 
title_basics.primaryTitle, 
title_basics.originalTitle, 
title_basics.isAdult, 
title_basics.startYear, 
title_basics.endYear, 
title_basics.runtimeMinutes, 
title_basics.genres, 
title_ratings.averageRating, 
title_ratings.numVotes, 
name_basics.primaryName, 
name_basics.birthYear, 
name_basics.deathYear, 
name_basics.primaryProfession, 
name_basics.knownForTitles
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
WHERE title_basics.title LIKE '%Ace Ventura%' OR title_basics.title LIKE '%Dumb and Dumber%'
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 10000
AND name_basics.primaryName NOT LIKE 'Jim Carrey%'
AND name_basics.primaryProfession NOT LIKE 'Actor%'
GROUP BY title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles
HAVING COUNT(DISTINCT title_basics.title) > 2
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC