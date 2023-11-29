SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.genres LIKE '%romantic comedy%'
AND title_basics.startYear >= 2000
AND title_basics.endYear <= 2019
AND title_basics.runtimeMinutes >= 80
AND title_basics.isAdult = 0
AND name_basics.primaryName LIKE '%Judd Apatow%'
OR name_basics.knownForTitles LIKE '%Judd Apatow%'
OR title_crew.directors LIKE '%Judd Apatow%'
OR title_crew.writers LIKE '%Judd Apatow%'
OR title_principals.category LIKE '%Comedy%'
OR title_principals.job LIKE '%Actor%'
OR title_principals.characters LIKE '%Comedic%'

ORDER BY title_basics.startYear DESC, title_basics.endYear DESC, title_basics.runtimeMinutes DESC, title_basics.genres ASC