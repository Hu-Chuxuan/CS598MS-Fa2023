SELECT 
title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes, 
name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, 
title_crew.directors, title_crew.writers, 
title_principals.ordering, title_principals.nconst, title_principals.category, title_principals.job, title_principals.characters 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.tconst = name_basics.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.primaryTitle = 'Superbad' OR title_basics.primaryTitle = 'Ace Ventura: Pet Detective' 
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT tconst FROM title_basics WHERE primaryTitle = 'John Wick: Chapter 2')) 
AND title_basics.startYear BETWEEN 2000 AND 2019 
AND title_basics.genres LIKE '%comedy%' 
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC