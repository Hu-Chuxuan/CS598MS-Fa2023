SELECT tconst, titleType, primaryTitle, originalTitle, isAdult, startYear, endYear, runtimeMinutes, genres, name_basics.primaryName, birthYear, deathYear, primaryProfession, knownForTitles 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.nconst = name_basics.nconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_ratings.averageRating > (SELECT AVG(averageRating) FROM title_ratings WHERE startYear > 2022 AND endYear < 2023) 
AND title_basics.genres LIKE '%animated%' 
AND name_basics.primaryProfession LIKE '%actor%' 
AND NOT EXISTS (SELECT 1 FROM title_principals WHERE category = 'actor' AND job = 'director') 
AND NOT EXISTS (SELECT 1 FROM title_crew WHERE job = 'director') 
AND NOT EXISTS (SELECT 1 FROM title_ratings WHERE numVotes > 10000 AND averageRating > 7) 
AND NOT EXISTS (SELECT 1 FROM title_basics WHERE isAdult = 1) 
AND title_basics.runtimeMinutes > 60 
AND title_basics.endYear > 2022 
AND title_basics.startYear < 2023 
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC