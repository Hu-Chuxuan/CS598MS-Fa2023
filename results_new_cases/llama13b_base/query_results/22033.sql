SELECT * FROM (
SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, 
title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, 
title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters 
FROM title_basics 
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst 
JOIN name_basics ON title_basics.tconst = name_basics.tconst 
JOIN title_crew ON title_basics.tconst = title_crew.tconst 
JOIN title_principals ON title_basics.tconst = title_principals.tconst 
WHERE title_basics.primaryTitle = 'Pulp Fiction' AND title_ratings.averageRating > 7 AND title_ratings.numVotes > 10000 
) AS recommended_movies 
WHERE exists (
    SELECT 1 FROM user_preferences 
    WHERE user_preferences.title = recommended_movies.title 
    AND user_preferences.startYear = recommended_movies.startYear 
    AND user_preferences.endYear = recommended_movies.endYear 
    AND user_preferences.genres = recommended_movies.genres
)
ORDER BY recommended_movies.averageRating DESC