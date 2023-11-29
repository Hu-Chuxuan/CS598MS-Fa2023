SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres = 'Musical'
AND title_basics.startYear >= 2015
AND title_basics.endYear <= 2015
AND title_ratings.averageRating > (SELECT AVG(title_ratings.averageRating) FROM title_ratings WHERE title_ratings.tconst IN (SELECT title_basics.tconst FROM title_basics WHERE title_basics.genres = 'Musical' AND title_basics.startYear >= 2015 AND title_basics.endYear <= 2015))
AND title_principals.category = 'Actor'
AND title_principals.job = 'Lead'
AND title_principals.characters LIKE '%Musical%'
ORDER BY title_basics.startYear, title_basics.primaryTitle