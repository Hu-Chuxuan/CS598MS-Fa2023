SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'The Professional'
AND title_basics.isAdult = 0
AND title_basics.startYear = 1981
AND title_basics.endYear = 1981
AND title_basics.runtimeMinutes > 90
AND title_basics.genres LIKE '%Action%'
AND name_basics.primaryName IN ('Jean Reno', 'Natalie Portman')
AND title_crew.directors IN ('Luc Besson', 'Pierre Morel')
AND title_principals.category IN ('Actor', 'Actress')
AND title_principals.job IN ('Lead', 'Supporting')
AND title_principals.characters LIKE '%hitman%'

