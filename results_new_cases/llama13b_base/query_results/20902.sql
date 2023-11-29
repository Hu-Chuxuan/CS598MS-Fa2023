SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Comedy'
AND title_basics.startYear <= 2022
AND title_basics.endYear >= 2000
AND title_principals.category = 'Movie'
AND title_principals.job = 'Actor'
AND title_principals.characters = 'Lead'
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 1000
AND NOT EXISTS (
    SELECT 1 FROM title_ratings
    WHERE title_ratings.tconst = title_basics.tconst
    AND title_ratings.numVotes > 1000
    AND title_ratings.averageRating > 7
    AND title_ratings.user_id = <user_id>
)
ORDER BY title_ratings.averageRating DESC, title_basics.startYear DESC