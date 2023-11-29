SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.title = 'Pitch Perfect' AND 
title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE title = 'Les Misérables') AND 
title_ratings.numVotes > (SELECT COUNT(numVotes) FROM title_ratings WHERE title = 'Les Misérables') AND 
title_basics.genres LIKE '%Musical%' AND 
title_basics.startYear BETWEEN 2010 AND 2020 AND 
title_basics.endYear IS NULL