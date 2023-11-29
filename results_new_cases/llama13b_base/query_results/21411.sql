SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.startYear >= 1980 AND title_basics.endYear <= 1989
AND title_ratings.averageRating > 7
AND name_basics.primaryProfession = 'Actor'
AND title_crew.directors = 'John Hughes'
AND title_principals.category = 'Comedy'
AND title_principals.job = 'Writer'
AND title_principals.characters = 'Teenagers'
ORDER BY title_ratings.averageRating DESC, title_basics.primaryTitle ASC