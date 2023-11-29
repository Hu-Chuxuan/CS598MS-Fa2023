SELECT title_basics.title, title_basics.primaryTitle, title_basics.originalTitle, title_basics.isAdult, title_basics.startYear, title_basics.endYear, title_basics.runtimeMinutes, title_basics.genres, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, name_basics.knownForTitles, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN name_basics ON title_basics.tconst = name_basics.tconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.isAdult = 0 -- exclude adult movies
AND title_basics.genres LIKE '%comedy%' -- only include comedies
AND name_basics.primaryName NOT IN ('Bill Murray', 'Chevy Chase') -- exclude movies with Bill Murray or Chevy Chase
AND title_basics.startYear BETWEEN 1980 AND 2018 -- only include movies released between 1980 and 2018
AND title_basics.endYear IS NULL -- only include movies with no specified end year
AND title_principals.category = 'Actor' -- only include movies with actors
AND title_principals.job = 'Lead' -- only include movies with lead actors
AND title_principals.characters LIKE '%funny%' -- only include movies with funny characters

ORDER BY title_basics.startYear DESC, title_basics.endYear ASC, title_basics.runtimeMinutes ASC