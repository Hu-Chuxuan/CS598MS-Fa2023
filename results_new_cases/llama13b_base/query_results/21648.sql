SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, 
title_principals.characters

FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst

WHERE title_basics.primaryTitle = 'The Place Beyond the Pines' AND 
title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) 
FROM title_ratings WHERE title_ratings.tconst IN (SELECT tconst 
FROM title_basics WHERE primaryTitle = 'The Shawshank Redemption') AND 
title_ratings.numVotes > 1000) AND 
title_basics.genres LIKE '%Drama%' AND 
title_basics.startYear BETWEEN 2000 AND 2019 AND 
title_basics.endYear IS NULL