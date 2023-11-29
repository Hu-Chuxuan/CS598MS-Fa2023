SELECT title_basics.title, title_basics.primaryTitle, title_basics.startYear, title_basics.runtimeMinutes, title_ratings.averageRating, title_ratings.numVotes, name_basics.primaryName, name_basics.birthYear, name_basics.deathYear, name_basics.primaryProfession, title_crew.directors, title_crew.writers, title_principals.ordering, title_principals.category, title_principals.job, title_principals.characters
FROM title_basics
JOIN title_ratings ON title_basics.tconst = title_ratings.tconst
JOIN name_basics ON title_basics.nconst = name_basics.nconst
JOIN title_crew ON title_basics.tconst = title_crew.tconst
JOIN title_principals ON title_basics.tconst = title_principals.tconst
WHERE title_basics.primaryTitle = 'The Hunt for Red October'
AND title_ratings.averageRating > 7
AND title_ratings.numVotes > 1000
AND name_basics.primaryName IN ('Mark Wahlberg', 'Will Ferrell', 'Zach Galifianakis')
AND title_crew.directors IN ('Sean Anders', 'Jason Bateman', 'Jamie Foxx')
AND title_principals.category IN ('Comedy', 'Crime', 'Thriller')
AND title_principals.job IN ('Actor', 'Director', 'Writer')
AND title_principals.characters LIKE '%horrible%'